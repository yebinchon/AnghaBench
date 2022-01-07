; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_cdg.c_cdg_cb_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_cdg.c_cdg_cb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_var = type { %struct.cdg* }
%struct.cdg = type { i32, i32 }
%struct.qdiff_sample = type { i32 }

@qdiff_lnk = common dso_local global i32 0, align 4
@qdiffsample_zone = common dso_local global i32 0, align 4
@M_CDG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_var*)* @cdg_cb_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdg_cb_destroy(%struct.cc_var* %0) #0 {
  %2 = alloca %struct.cc_var*, align 8
  %3 = alloca %struct.cdg*, align 8
  %4 = alloca %struct.qdiff_sample*, align 8
  %5 = alloca %struct.qdiff_sample*, align 8
  store %struct.cc_var* %0, %struct.cc_var** %2, align 8
  %6 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %7 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %6, i32 0, i32 0
  %8 = load %struct.cdg*, %struct.cdg** %7, align 8
  store %struct.cdg* %8, %struct.cdg** %3, align 8
  %9 = load %struct.cdg*, %struct.cdg** %3, align 8
  %10 = getelementptr inbounds %struct.cdg, %struct.cdg* %9, i32 0, i32 1
  %11 = call %struct.qdiff_sample* @STAILQ_FIRST(i32* %10)
  store %struct.qdiff_sample* %11, %struct.qdiff_sample** %4, align 8
  br label %12

12:                                               ; preds = %15, %1
  %13 = load %struct.qdiff_sample*, %struct.qdiff_sample** %4, align 8
  %14 = icmp ne %struct.qdiff_sample* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load %struct.qdiff_sample*, %struct.qdiff_sample** %4, align 8
  %17 = load i32, i32* @qdiff_lnk, align 4
  %18 = call %struct.qdiff_sample* @STAILQ_NEXT(%struct.qdiff_sample* %16, i32 %17)
  store %struct.qdiff_sample* %18, %struct.qdiff_sample** %5, align 8
  %19 = load i32, i32* @qdiffsample_zone, align 4
  %20 = load %struct.qdiff_sample*, %struct.qdiff_sample** %4, align 8
  %21 = call i32 @uma_zfree(i32 %19, %struct.qdiff_sample* %20)
  %22 = load %struct.qdiff_sample*, %struct.qdiff_sample** %5, align 8
  store %struct.qdiff_sample* %22, %struct.qdiff_sample** %4, align 8
  br label %12

23:                                               ; preds = %12
  %24 = load %struct.cdg*, %struct.cdg** %3, align 8
  %25 = getelementptr inbounds %struct.cdg, %struct.cdg* %24, i32 0, i32 0
  %26 = call %struct.qdiff_sample* @STAILQ_FIRST(i32* %25)
  store %struct.qdiff_sample* %26, %struct.qdiff_sample** %4, align 8
  br label %27

27:                                               ; preds = %30, %23
  %28 = load %struct.qdiff_sample*, %struct.qdiff_sample** %4, align 8
  %29 = icmp ne %struct.qdiff_sample* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.qdiff_sample*, %struct.qdiff_sample** %4, align 8
  %32 = load i32, i32* @qdiff_lnk, align 4
  %33 = call %struct.qdiff_sample* @STAILQ_NEXT(%struct.qdiff_sample* %31, i32 %32)
  store %struct.qdiff_sample* %33, %struct.qdiff_sample** %5, align 8
  %34 = load i32, i32* @qdiffsample_zone, align 4
  %35 = load %struct.qdiff_sample*, %struct.qdiff_sample** %4, align 8
  %36 = call i32 @uma_zfree(i32 %34, %struct.qdiff_sample* %35)
  %37 = load %struct.qdiff_sample*, %struct.qdiff_sample** %5, align 8
  store %struct.qdiff_sample* %37, %struct.qdiff_sample** %4, align 8
  br label %27

38:                                               ; preds = %27
  %39 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %40 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %39, i32 0, i32 0
  %41 = load %struct.cdg*, %struct.cdg** %40, align 8
  %42 = load i32, i32* @M_CDG, align 4
  %43 = call i32 @free(%struct.cdg* %41, i32 %42)
  ret void
}

declare dso_local %struct.qdiff_sample* @STAILQ_FIRST(i32*) #1

declare dso_local %struct.qdiff_sample* @STAILQ_NEXT(%struct.qdiff_sample*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.qdiff_sample*) #1

declare dso_local i32 @free(%struct.cdg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
