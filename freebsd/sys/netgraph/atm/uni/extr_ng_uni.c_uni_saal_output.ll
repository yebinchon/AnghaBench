; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/uni/extr_ng_uni.c_uni_saal_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/uni/extr_ng_uni.c_uni_saal_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32 }
%struct.uni_msg = type { i32 }
%struct.priv = type { i32*, i32 }
%struct.mbuf = type { i32 }
%struct.sscfu_arg = type { i32 }

@UNI_FAC_SAAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni*, i8*, i32, %struct.uni_msg*)* @uni_saal_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uni_saal_output(%struct.uni* %0, i8* %1, i32 %2, %struct.uni_msg* %3) #0 {
  %5 = alloca %struct.uni*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uni_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.priv*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.sscfu_arg, align 4
  %13 = alloca i32, align 4
  store %struct.uni* %0, %struct.uni** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.uni_msg* %3, %struct.uni_msg** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.priv* @NG_NODE_PRIVATE(i32 %16)
  store %struct.priv* %17, %struct.priv** %10, align 8
  %18 = load %struct.priv*, %struct.priv** %10, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @UNI_FAC_SAAL, align 4
  %22 = call i64 @uni_get_debug(i32 %20, i32 %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.uni_msg*, %struct.uni_msg** %8, align 8
  %28 = call i32 @dump_saal_signal(i32 %25, i32 %26, %struct.uni_msg* %27, i32 1)
  br label %29

29:                                               ; preds = %24, %4
  %30 = load %struct.priv*, %struct.priv** %10, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.uni_msg*, %struct.uni_msg** %8, align 8
  %36 = icmp ne %struct.uni_msg* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.uni_msg*, %struct.uni_msg** %8, align 8
  %39 = call i32 @uni_msg_destroy(%struct.uni_msg* %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %62

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds %struct.sscfu_arg, %struct.sscfu_arg* %12, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.uni_msg*, %struct.uni_msg** %8, align 8
  %45 = call %struct.mbuf* @uni_msg_pack_mbuf(%struct.uni_msg* %44, %struct.sscfu_arg* %12, i32 4)
  store %struct.mbuf* %45, %struct.mbuf** %11, align 8
  %46 = load %struct.uni_msg*, %struct.uni_msg** %8, align 8
  %47 = icmp ne %struct.uni_msg* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.uni_msg*, %struct.uni_msg** %8, align 8
  %50 = call i32 @uni_msg_destroy(%struct.uni_msg* %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %53 = icmp eq %struct.mbuf* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.priv*, %struct.priv** %10, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %61 = call i32 @NG_SEND_DATA_ONLY(i32 %56, i32* %59, %struct.mbuf* %60)
  br label %62

62:                                               ; preds = %55, %54, %40
  ret void
}

declare dso_local %struct.priv* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @uni_get_debug(i32, i32) #1

declare dso_local i32 @dump_saal_signal(i32, i32, %struct.uni_msg*, i32) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local %struct.mbuf* @uni_msg_pack_mbuf(%struct.uni_msg*, %struct.sscfu_arg*, i32) #1

declare dso_local i32 @NG_SEND_DATA_ONLY(i32, i32*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
