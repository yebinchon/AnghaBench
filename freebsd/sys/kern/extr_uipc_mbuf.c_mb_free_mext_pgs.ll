; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_mb_free_mext_pgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_mb_free_mext_pgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mbuf_ext_pgs* }
%struct.mbuf_ext_pgs = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mb_free_mext_pgs(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.mbuf_ext_pgs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %7 = call i32 @MBUF_EXT_PGS_ASSERT(%struct.mbuf* %6)
  %8 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %9 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %10, align 8
  store %struct.mbuf_ext_pgs* %11, %struct.mbuf_ext_pgs** %3, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %31, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %3, align 8
  %15 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %3, align 8
  %20 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @PHYS_TO_VM_PAGE(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @vm_page_unwire_noq(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @vm_page_free(i32 %29)
  br label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %12

34:                                               ; preds = %12
  ret void
}

declare dso_local i32 @MBUF_EXT_PGS_ASSERT(%struct.mbuf*) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_unwire_noq(i32) #1

declare dso_local i32 @vm_page_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
