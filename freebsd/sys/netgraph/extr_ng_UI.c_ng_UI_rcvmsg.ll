; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_UI.c_ng_UI_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_UI.c_ng_UI_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.ng_mesg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@NGM_FLOW_COOKIE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @ng_UI_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_UI_rcvmsg(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.ng_mesg*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.ng_mesg* @NGI_MSG(i32 %13)
  store %struct.ng_mesg* %14, %struct.ng_mesg** %10, align 8
  %15 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %16 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NGM_FLOW_COOKIE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @NG_FWD_ITEM_HOOK(i32 %36, i32 %37, i64 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %63

43:                                               ; preds = %30
  br label %58

44:                                               ; preds = %24
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @NG_FWD_ITEM_HOOK(i32 %50, i32 %51, i64 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %63

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %43
  br label %59

59:                                               ; preds = %58, %21, %3
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @NG_FREE_ITEM(i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %49, %35
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local %struct.ng_mesg* @NGI_MSG(i32) #1

declare dso_local i32 @NG_FWD_ITEM_HOOK(i32, i32, i64) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
