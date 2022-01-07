; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.umntall/extr_rpc.umntall.c_is_mounted.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.umntall/extr_rpc.umntall.c_is_mounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32 }

@MNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@MNT_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_mounted(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.statfs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @MNAMELEN, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = add nsw i32 %19, %21
  %23 = load i32, i32* @MNAMELEN, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %75

26:                                               ; preds = %2
  %27 = trunc i64 %15 to i32
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @snprintf(i8* %17, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29)
  %31 = load i32, i32* @MNT_NOWAIT, align 4
  %32 = call i32 @getfsstat(%struct.statfs* null, i64 0, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %75

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call %struct.statfs* @malloc(i64 %41)
  store %struct.statfs* %42, %struct.statfs** %6, align 8
  %43 = icmp eq %struct.statfs* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %36
  %47 = load %struct.statfs*, %struct.statfs** %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* @MNT_NOWAIT, align 4
  %50 = call i32 @getfsstat(%struct.statfs* %47, i64 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %69, %46
  %54 = load i32, i32* %11, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load %struct.statfs*, %struct.statfs** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.statfs, %struct.statfs* %57, i64 %59
  %61 = getelementptr inbounds %struct.statfs, %struct.statfs* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @strcmp(i32 %62, i8* %17)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %struct.statfs*, %struct.statfs** %6, align 8
  %67 = call i32 @free(%struct.statfs* %66)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %75

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %11, align 4
  br label %53

72:                                               ; preds = %53
  %73 = load %struct.statfs*, %struct.statfs** %6, align 8
  %74 = call i32 @free(%struct.statfs* %73)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %75

75:                                               ; preds = %72, %65, %35, %25
  %76 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @getfsstat(%struct.statfs*, i64, i32) #2

declare dso_local %struct.statfs* @malloc(i64) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @free(%struct.statfs*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
