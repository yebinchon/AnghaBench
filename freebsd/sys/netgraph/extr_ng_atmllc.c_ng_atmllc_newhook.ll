; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_atmllc.c_ng_atmllc_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_atmllc.c_ng_atmllc_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_atmllc_priv = type { i32*, i32*, i32* }

@NG_ATMLLC_HOOK_ATM = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@NG_ATMLLC_HOOK_ETHER = common dso_local global i32 0, align 4
@NG_ATMLLC_HOOK_FDDI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @ng_atmllc_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_atmllc_newhook(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ng_atmllc_priv*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.ng_atmllc_priv* @NG_NODE_PRIVATE(i32 %9)
  store %struct.ng_atmllc_priv* %10, %struct.ng_atmllc_priv** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* @NG_ATMLLC_HOOK_ATM, align 4
  %13 = call i64 @strcmp(i8* %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.ng_atmllc_priv*, %struct.ng_atmllc_priv** %8, align 8
  %17 = getelementptr inbounds %struct.ng_atmllc_priv, %struct.ng_atmllc_priv* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @EISCONN, align 4
  store i32 %21, i32* %4, align 4
  br label %66

22:                                               ; preds = %15
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.ng_atmllc_priv*, %struct.ng_atmllc_priv** %8, align 8
  %26 = getelementptr inbounds %struct.ng_atmllc_priv, %struct.ng_atmllc_priv* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  br label %65

27:                                               ; preds = %3
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @NG_ATMLLC_HOOK_ETHER, align 4
  %30 = call i64 @strcmp(i8* %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.ng_atmllc_priv*, %struct.ng_atmllc_priv** %8, align 8
  %34 = getelementptr inbounds %struct.ng_atmllc_priv, %struct.ng_atmllc_priv* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @EISCONN, align 4
  store i32 %38, i32* %4, align 4
  br label %66

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.ng_atmllc_priv*, %struct.ng_atmllc_priv** %8, align 8
  %43 = getelementptr inbounds %struct.ng_atmllc_priv, %struct.ng_atmllc_priv* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  br label %64

44:                                               ; preds = %27
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @NG_ATMLLC_HOOK_FDDI, align 4
  %47 = call i64 @strcmp(i8* %45, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.ng_atmllc_priv*, %struct.ng_atmllc_priv** %8, align 8
  %51 = getelementptr inbounds %struct.ng_atmllc_priv, %struct.ng_atmllc_priv* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @EISCONN, align 4
  store i32 %55, i32* %4, align 4
  br label %66

56:                                               ; preds = %49
  %57 = load i8*, i8** %6, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.ng_atmllc_priv*, %struct.ng_atmllc_priv** %8, align 8
  %60 = getelementptr inbounds %struct.ng_atmllc_priv, %struct.ng_atmllc_priv* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  br label %63

61:                                               ; preds = %44
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %4, align 4
  br label %66

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %39
  br label %65

65:                                               ; preds = %64, %22
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %61, %54, %37, %20
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.ng_atmllc_priv* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
