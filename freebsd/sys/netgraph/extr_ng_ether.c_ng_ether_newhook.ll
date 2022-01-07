; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ether.c_ng_ether_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ether.c_ng_ether_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i64 }

@NG_ETHER_HOOK_DIVERT = common dso_local global i8* null, align 8
@NG_ETHER_HOOK_LOWER = common dso_local global i8* null, align 8
@NG_ETHER_HOOK_UPPER = common dso_local global i8* null, align 8
@ng_ether_rcv_upper = common dso_local global i32 0, align 4
@ng_ether_rcv_lower = common dso_local global i32 0, align 4
@NG_ETHER_HOOK_ORPHAN = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*)* @ng_ether_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ether_newhook(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32**, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** @NG_ETHER_HOOK_DIVERT, align 8
  %14 = call i64 @strcmp(i8* %12, i8* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i8*, i8** @NG_ETHER_HOOK_LOWER, align 8
  store i8* %17, i8** %7, align 8
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** @NG_ETHER_HOOK_UPPER, align 8
  %21 = call i64 @strcmp(i8* %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32** %25, i32*** %9, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @ng_ether_rcv_upper, align 4
  %28 = call i32 @NG_HOOK_SET_RCVDATA(i32* %26, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @NG_HOOK_SET_TO_INBOUND(i32* %29)
  br label %57

31:                                               ; preds = %18
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** @NG_ETHER_HOOK_LOWER, align 8
  %34 = call i64 @strcmp(i8* %32, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  store i32** %38, i32*** %9, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @ng_ether_rcv_lower, align 4
  %41 = call i32 @NG_HOOK_SET_RCVDATA(i32* %39, i32 %40)
  br label %56

42:                                               ; preds = %31
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** @NG_ETHER_HOOK_ORPHAN, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32** %49, i32*** %9, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @ng_ether_rcv_lower, align 4
  %52 = call i32 @NG_HOOK_SET_RCVDATA(i32* %50, i32 %51)
  br label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %4, align 4
  br label %78

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %36
  br label %57

57:                                               ; preds = %56, %23
  %58 = load i32**, i32*** %9, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @EISCONN, align 4
  store i32 %62, i32* %4, align 4
  br label %78

63:                                               ; preds = %57
  %64 = load i32**, i32*** %9, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = icmp eq i32** %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @NG_HOOK_HI_STACK(i32* %74)
  %76 = load i32*, i32** %6, align 8
  %77 = load i32**, i32*** %9, align 8
  store i32* %76, i32** %77, align 8
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %61, %53
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @NG_HOOK_SET_RCVDATA(i32*, i32) #1

declare dso_local i32 @NG_HOOK_SET_TO_INBOUND(i32*) #1

declare dso_local i32 @NG_HOOK_HI_STACK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
