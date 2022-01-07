; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscop/extr_ng_sscop.c_ng_sscop_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscop/extr_ng_sscop.c_ng_sscop_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i64, i32*, i32*, i32* }

@SSCOP_IDLE = common dso_local global i64 0, align 8
@SSCOP_RELEASE_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ng_sscop_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_sscop_disconnect(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.priv*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @NG_HOOK_NODE(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.priv* @NG_NODE_PRIVATE(i32 %7)
  store %struct.priv* %8, %struct.priv** %4, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = load %struct.priv*, %struct.priv** %4, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.priv*, %struct.priv** %4, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 3
  store i32* null, i32** %16, align 8
  br label %37

17:                                               ; preds = %1
  %18 = load i32*, i32** %2, align 8
  %19 = load %struct.priv*, %struct.priv** %4, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.priv*, %struct.priv** %4, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  br label %36

26:                                               ; preds = %17
  %27 = load i32*, i32** %2, align 8
  %28 = load %struct.priv*, %struct.priv** %4, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.priv*, %struct.priv** %4, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 4
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %32, %26
  br label %36

36:                                               ; preds = %35, %23
  br label %37

37:                                               ; preds = %36, %14
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @NG_NODE_NUMHOOKS(i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @NG_NODE_IS_VALID(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @ng_rmnode_self(i32 %46)
  br label %48

48:                                               ; preds = %45, %41
  br label %78

49:                                               ; preds = %37
  %50 = load %struct.priv*, %struct.priv** %4, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %77

54:                                               ; preds = %49
  %55 = load %struct.priv*, %struct.priv** %4, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load %struct.priv*, %struct.priv** %4, align 8
  %61 = getelementptr inbounds %struct.priv, %struct.priv* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.priv*, %struct.priv** %4, align 8
  %66 = getelementptr inbounds %struct.priv, %struct.priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @sscop_getstate(i32 %67)
  %69 = load i64, i64* @SSCOP_IDLE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.priv*, %struct.priv** %4, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SSCOP_RELEASE_request, align 4
  %76 = call i32 @sscop_aasig(i32 %74, i32 %75, i32* null, i32 0)
  br label %77

77:                                               ; preds = %71, %64, %59, %54, %49
  br label %78

78:                                               ; preds = %77, %48
  ret i32 0
}

declare dso_local i32 @NG_HOOK_NODE(i32*) #1

declare dso_local %struct.priv* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @NG_NODE_NUMHOOKS(i32) #1

declare dso_local i64 @NG_NODE_IS_VALID(i32) #1

declare dso_local i32 @ng_rmnode_self(i32) #1

declare dso_local i64 @sscop_getstate(i32) #1

declare dso_local i32 @sscop_aasig(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
