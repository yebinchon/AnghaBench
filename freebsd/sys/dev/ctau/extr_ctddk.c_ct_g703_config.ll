; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_g703_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctddk.c_ct_g703_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i8 }
%struct.TYPE_11__ = type { i32 }

@CFG_B = common dso_local global i8 0, align 1
@M_HDLC = common dso_local global i32 0, align 4
@M_G703 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8)* @ct_g703_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_g703_config(%struct.TYPE_10__* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8, align 1
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %6, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %71

14:                                               ; preds = %2
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @CFG_B, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i32, i32* @M_HDLC, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32 %21, i32* %26, align 4
  br label %34

27:                                               ; preds = %14
  %28 = load i32, i32* @M_G703, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 %28, i32* %33, align 4
  br label %34

34:                                               ; preds = %27, %20
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 8
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @CFG_B, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %34
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 1
  %48 = call i32 @ct_chan_baud(%struct.TYPE_11__* %47, i32 0)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 1
  %53 = call i32 @ct_set_invtxc(%struct.TYPE_11__* %52, i32 0)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 1
  %58 = call i32 @ct_set_invrxc(%struct.TYPE_11__* %57, i32 0)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 1
  %63 = call i32 @ct_set_nrzi(%struct.TYPE_11__* %62, i32 0)
  br label %64

64:                                               ; preds = %43, %34
  %65 = load i8, i8* %4, align 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i8 %65, i8* %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = call i32 @ct_setup_g703(%struct.TYPE_10__* %69)
  br label %71

71:                                               ; preds = %64, %13
  ret void
}

declare dso_local i32 @ct_chan_baud(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ct_set_invtxc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ct_set_invrxc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ct_set_nrzi(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ct_setup_g703(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
