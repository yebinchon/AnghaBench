; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/uni/extr_ng_uni.c_uni_uni_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/uni/extr_ng_uni.c_uni_uni_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32 }
%struct.uni_msg = type { i32 }
%struct.priv = type { i32* }
%struct.mbuf = type { i32 }
%struct.uni_arg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni*, i8*, i32, i32, %struct.uni_msg*)* @uni_uni_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uni_uni_output(%struct.uni* %0, i8* %1, i32 %2, i32 %3, %struct.uni_msg* %4) #0 {
  %6 = alloca %struct.uni*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uni_msg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.priv*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.uni_arg, align 4
  %15 = alloca i32, align 4
  store %struct.uni* %0, %struct.uni** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.uni_msg* %4, %struct.uni_msg** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call %struct.priv* @NG_NODE_PRIVATE(i32 %18)
  store %struct.priv* %19, %struct.priv** %12, align 8
  %20 = load %struct.priv*, %struct.priv** %12, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.uni_msg*, %struct.uni_msg** %10, align 8
  %26 = icmp ne %struct.uni_msg* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.uni_msg*, %struct.uni_msg** %10, align 8
  %29 = call i32 @uni_msg_destroy(%struct.uni_msg* %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %54

31:                                               ; preds = %5
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds %struct.uni_arg, %struct.uni_arg* %14, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds %struct.uni_arg, %struct.uni_arg* %14, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.uni_msg*, %struct.uni_msg** %10, align 8
  %37 = call %struct.mbuf* @uni_msg_pack_mbuf(%struct.uni_msg* %36, %struct.uni_arg* %14, i32 8)
  store %struct.mbuf* %37, %struct.mbuf** %13, align 8
  %38 = load %struct.uni_msg*, %struct.uni_msg** %10, align 8
  %39 = icmp ne %struct.uni_msg* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.uni_msg*, %struct.uni_msg** %10, align 8
  %42 = call i32 @uni_msg_destroy(%struct.uni_msg* %41)
  br label %43

43:                                               ; preds = %40, %31
  %44 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %45 = icmp eq %struct.mbuf* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %54

47:                                               ; preds = %43
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.priv*, %struct.priv** %12, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %53 = call i32 @NG_SEND_DATA_ONLY(i32 %48, i32* %51, %struct.mbuf* %52)
  br label %54

54:                                               ; preds = %47, %46, %30
  ret void
}

declare dso_local %struct.priv* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local %struct.mbuf* @uni_msg_pack_mbuf(%struct.uni_msg*, %struct.uni_arg*, i32) #1

declare dso_local i32 @NG_SEND_DATA_ONLY(i32, i32*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
