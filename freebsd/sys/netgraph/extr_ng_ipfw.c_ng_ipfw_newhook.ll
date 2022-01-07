; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ipfw.c_ng_ipfw_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ipfw.c_ng_ipfw_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_NETGRAPH = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @ng_ipfw_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ipfw_newhook(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 48
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %72

25:                                               ; preds = %17, %3
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %40, %25
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @isdigit(i8 signext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %72

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %10, align 8
  br label %27

43:                                               ; preds = %27
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @strtol(i8* %44, i8** %11, i32 10)
  store i64 %45, i64* %9, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %4, align 4
  br label %72

52:                                               ; preds = %43
  %53 = load i32, i32* @M_NETGRAPH, align 4
  %54 = load i32, i32* @M_NOWAIT, align 4
  %55 = load i32, i32* @M_ZERO, align 4
  %56 = or i32 %54, %55
  %57 = call %struct.TYPE_4__* @malloc(i32 16, i32 %53, i32 %56)
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %8, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = icmp eq %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %4, align 4
  br label %72

62:                                               ; preds = %52
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = call i32 @NG_HOOK_SET_PRIVATE(i32 %69, %struct.TYPE_4__* %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %62, %60, %50, %37, %23
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.TYPE_4__* @malloc(i32, i32, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
