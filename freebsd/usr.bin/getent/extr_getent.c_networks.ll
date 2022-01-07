; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_networks.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_networks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netent = type { i32 }

@RV_OK = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@RV_NOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @networks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @networks(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.netent*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i8**, i8*** %4, align 8
  %14 = icmp ne i8** %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = call i32 @setnetent(i32 1)
  %18 = load i32, i32* @RV_OK, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %25, %21
  %23 = call %struct.netent* (...) @getnetent()
  store %struct.netent* %23, %struct.netent** %5, align 8
  %24 = icmp ne %struct.netent* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.netent*, %struct.netent** %5, align 8
  %27 = call i32 @networksprint(%struct.netent* %26)
  br label %22

28:                                               ; preds = %22
  br label %68

29:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %30

30:                                               ; preds = %64, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = load i8**, i8*** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @inet_network(i8* %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @INADDR_NONE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @AF_INET, align 4
  %47 = call %struct.netent* @getnetbyaddr(i64 %45, i32 %46)
  store %struct.netent* %47, %struct.netent** %5, align 8
  br label %55

48:                                               ; preds = %34
  %49 = load i8**, i8*** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call %struct.netent* @getnetbyname(i8* %53)
  store %struct.netent* %54, %struct.netent** %5, align 8
  br label %55

55:                                               ; preds = %48, %44
  %56 = load %struct.netent*, %struct.netent** %5, align 8
  %57 = icmp ne %struct.netent* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.netent*, %struct.netent** %5, align 8
  %60 = call i32 @networksprint(%struct.netent* %59)
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @RV_NOTFOUND, align 4
  store i32 %62, i32* %8, align 4
  br label %67

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %30

67:                                               ; preds = %61, %30
  br label %68

68:                                               ; preds = %67, %28
  %69 = call i32 (...) @endnetent()
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @setnetent(i32) #1

declare dso_local %struct.netent* @getnetent(...) #1

declare dso_local i32 @networksprint(%struct.netent*) #1

declare dso_local i64 @inet_network(i8*) #1

declare dso_local %struct.netent* @getnetbyaddr(i64, i32) #1

declare dso_local %struct.netent* @getnetbyname(i8*) #1

declare dso_local i32 @endnetent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
