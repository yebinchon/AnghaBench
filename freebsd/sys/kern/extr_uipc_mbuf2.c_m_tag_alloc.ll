; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf2.c_m_tag_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf2.c_m_tag_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_tag = type { i32 }

@M_PACKET_TAGS = common dso_local global i32 0, align 4
@m_tag_free_default = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.m_tag* @m_tag_alloc(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.m_tag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.m_tag*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @MBUF_CHECKSLEEP(i32 %11)
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.m_tag* null, %struct.m_tag** %5, align 8
  br label %37

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @M_PACKET_TAGS, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.m_tag* @malloc(i32 %20, i32 %21, i32 %22)
  store %struct.m_tag* %23, %struct.m_tag** %10, align 8
  %24 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %25 = icmp eq %struct.m_tag* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store %struct.m_tag* null, %struct.m_tag** %5, align 8
  br label %37

27:                                               ; preds = %16
  %28 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @m_tag_setup(%struct.m_tag* %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @m_tag_free_default, align 4
  %34 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %35 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  store %struct.m_tag* %36, %struct.m_tag** %5, align 8
  br label %37

37:                                               ; preds = %27, %26, %15
  %38 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  ret %struct.m_tag* %38
}

declare dso_local i32 @MBUF_CHECKSLEEP(i32) #1

declare dso_local %struct.m_tag* @malloc(i32, i32, i32) #1

declare dso_local i32 @m_tag_setup(%struct.m_tag*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
