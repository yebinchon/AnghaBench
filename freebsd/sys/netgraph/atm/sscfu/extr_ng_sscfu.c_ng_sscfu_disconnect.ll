; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscfu/extr_ng_sscfu.c_ng_sscfu_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscfu/extr_ng_sscfu.c_ng_sscfu_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i64, i32*, i32* }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"bogus hook\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SSCFU_RELEASED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ng_sscfu_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_sscfu_disconnect(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.priv*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @NG_HOOK_NODE(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.priv* @NG_NODE_PRIVATE(i32 %8)
  store %struct.priv* %9, %struct.priv** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.priv*, %struct.priv** %5, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.priv*, %struct.priv** %5, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  br label %32

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.priv*, %struct.priv** %5, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.priv*, %struct.priv** %5, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  br label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = call i32 @log(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %2, align 4
  br label %68

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @NG_NODE_NUMHOOKS(i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @NG_NODE_IS_VALID(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ng_rmnode_self(i32 %41)
  br label %43

43:                                               ; preds = %40, %36
  br label %67

44:                                               ; preds = %32
  %45 = load %struct.priv*, %struct.priv** %5, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load %struct.priv*, %struct.priv** %5, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.priv*, %struct.priv** %5, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @sscfu_getstate(i32 %57)
  %59 = load i64, i64* @SSCFU_RELEASED, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.priv*, %struct.priv** %5, align 8
  %63 = getelementptr inbounds %struct.priv, %struct.priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sscfu_reset(i32 %64)
  br label %66

66:                                               ; preds = %61, %54, %49, %44
  br label %67

67:                                               ; preds = %66, %43
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %27
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @NG_HOOK_NODE(i32*) #1

declare dso_local %struct.priv* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @log(i32, i8*) #1

declare dso_local i64 @NG_NODE_NUMHOOKS(i32) #1

declare dso_local i64 @NG_NODE_IS_VALID(i32) #1

declare dso_local i32 @ng_rmnode_self(i32) #1

declare dso_local i64 @sscfu_getstate(i32) #1

declare dso_local i32 @sscfu_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
