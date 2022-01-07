; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/bthost/extr_bthost.c_hostmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/bthost/extr_bthost.c_hostmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8*, i64 }

@AF_BLUETOOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Host %s has %s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @hostmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostmode(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hostent* null, %struct.hostent** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @bt_aton(i8* %10, i32* %7)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  %14 = bitcast i32* %7 to i8*
  %15 = load i32, i32* @AF_BLUETOOTH, align 4
  %16 = call %struct.hostent* @bt_gethostbyaddr(i8* %14, i32 4, i32 %15)
  store %struct.hostent* %16, %struct.hostent** %6, align 8
  br label %20

17:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call %struct.hostent* @bt_gethostbyname(i8* %18)
  store %struct.hostent* %19, %struct.hostent** %6, align 8
  br label %20

20:                                               ; preds = %17, %13
  %21 = load %struct.hostent*, %struct.hostent** %6, align 8
  %22 = icmp eq %struct.hostent* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %28 = call i8* @bt_ntoa(i32* %7, i8* %27)
  br label %31

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i8* [ %28, %26 ], [ %30, %29 ]
  %33 = call i32 @herror(i8* %32)
  store i32 1, i32* %3, align 4
  br label %85

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.hostent*, %struct.hostent** %6, align 8
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  br label %51

44:                                               ; preds = %37
  %45 = load %struct.hostent*, %struct.hostent** %6, align 8
  %46 = getelementptr inbounds %struct.hostent, %struct.hostent* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %50 = call i8* @bt_ntoa(i32* %48, i8* %49)
  br label %51

51:                                               ; preds = %44, %40
  %52 = phi i8* [ %43, %40 ], [ %50, %44 ]
  %53 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %52)
  br label %84

54:                                               ; preds = %34
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %59 = call i8* @bt_ntoa(i32* %7, i8* %58)
  br label %62

60:                                               ; preds = %54
  %61 = load i8*, i8** %4, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i8* [ %59, %57 ], [ %61, %60 ]
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.hostent*, %struct.hostent** %6, align 8
  %72 = getelementptr inbounds %struct.hostent, %struct.hostent* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  br label %81

74:                                               ; preds = %62
  %75 = load %struct.hostent*, %struct.hostent** %6, align 8
  %76 = getelementptr inbounds %struct.hostent, %struct.hostent* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %80 = call i8* @bt_ntoa(i32* %78, i8* %79)
  br label %81

81:                                               ; preds = %74, %70
  %82 = phi i8* [ %73, %70 ], [ %80, %74 ]
  %83 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %63, i8* %67, i8* %82)
  br label %84

84:                                               ; preds = %81, %51
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %31
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @bt_aton(i8*, i32*) #1

declare dso_local %struct.hostent* @bt_gethostbyaddr(i8*, i32, i32) #1

declare dso_local %struct.hostent* @bt_gethostbyname(i8*) #1

declare dso_local i32 @herror(i8*) #1

declare dso_local i8* @bt_ntoa(i32*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
