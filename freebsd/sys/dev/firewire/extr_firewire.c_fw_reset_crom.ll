; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_reset_crom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_reset_crom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }
%struct.firewire_comm = type { %struct.crom_chunk*, %struct.crom_src*, %struct.crom_src_buf* }
%struct.crom_chunk = type { i32 }
%struct.crom_src = type { i32 }
%struct.crom_src_buf = type { i32, i32 }

@CSRKEY_NCAP = common dso_local global i32 0, align 4
@CSRKEY_VENDOR = common dso_local global i32 0, align 4
@CSRVAL_VENDOR_PRIVATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"FreeBSD Project\00", align 1
@CSRKEY_HW = common dso_local global i32 0, align 4
@__FreeBSD_version = common dso_local global i32 0, align 4
@prison0 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firewire_comm*)* @fw_reset_crom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_reset_crom(%struct.firewire_comm* %0) #0 {
  %2 = alloca %struct.firewire_comm*, align 8
  %3 = alloca %struct.crom_src_buf*, align 8
  %4 = alloca %struct.crom_src*, align 8
  %5 = alloca %struct.crom_chunk*, align 8
  store %struct.firewire_comm* %0, %struct.firewire_comm** %2, align 8
  %6 = load %struct.firewire_comm*, %struct.firewire_comm** %2, align 8
  %7 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %6, i32 0, i32 2
  %8 = load %struct.crom_src_buf*, %struct.crom_src_buf** %7, align 8
  store %struct.crom_src_buf* %8, %struct.crom_src_buf** %3, align 8
  %9 = load %struct.firewire_comm*, %struct.firewire_comm** %2, align 8
  %10 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %9, i32 0, i32 1
  %11 = load %struct.crom_src*, %struct.crom_src** %10, align 8
  store %struct.crom_src* %11, %struct.crom_src** %4, align 8
  %12 = load %struct.firewire_comm*, %struct.firewire_comm** %2, align 8
  %13 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %12, i32 0, i32 0
  %14 = load %struct.crom_chunk*, %struct.crom_chunk** %13, align 8
  store %struct.crom_chunk* %14, %struct.crom_chunk** %5, align 8
  %15 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %16 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %15, i32 0, i32 0
  %17 = call i32 @STAILQ_INIT(i32* %16)
  %18 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %19 = call i32 @bzero(%struct.crom_chunk* %18, i32 4)
  %20 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %21 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %22 = call i32 @crom_add_chunk(%struct.crom_src* %20, i32* null, %struct.crom_chunk* %21, i32 0)
  %23 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %24 = load i32, i32* @CSRKEY_NCAP, align 4
  %25 = call i32 @crom_add_entry(%struct.crom_chunk* %23, i32 %24, i32 33728)
  %26 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %27 = load i32, i32* @CSRKEY_VENDOR, align 4
  %28 = load i32, i32* @CSRVAL_VENDOR_PRIVATE, align 4
  %29 = call i32 @crom_add_entry(%struct.crom_chunk* %26, i32 %27, i32 %28)
  %30 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %31 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %32 = load %struct.crom_src_buf*, %struct.crom_src_buf** %3, align 8
  %33 = getelementptr inbounds %struct.crom_src_buf, %struct.crom_src_buf* %32, i32 0, i32 1
  %34 = call i32 @crom_add_simple_text(%struct.crom_src* %30, %struct.crom_chunk* %31, i32* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %36 = load i32, i32* @CSRKEY_HW, align 4
  %37 = load i32, i32* @__FreeBSD_version, align 4
  %38 = call i32 @crom_add_entry(%struct.crom_chunk* %35, i32 %36, i32 %37)
  %39 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 1))
  %40 = load %struct.crom_src*, %struct.crom_src** %4, align 8
  %41 = load %struct.crom_chunk*, %struct.crom_chunk** %5, align 8
  %42 = load %struct.crom_src_buf*, %struct.crom_src_buf** %3, align 8
  %43 = getelementptr inbounds %struct.crom_src_buf, %struct.crom_src_buf* %42, i32 0, i32 0
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 0), align 8
  %45 = call i32 @crom_add_simple_text(%struct.crom_src* %40, %struct.crom_chunk* %41, i32* %43, i8* %44)
  %46 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 1))
  ret void
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @bzero(%struct.crom_chunk*, i32) #1

declare dso_local i32 @crom_add_chunk(%struct.crom_src*, i32*, %struct.crom_chunk*, i32) #1

declare dso_local i32 @crom_add_entry(%struct.crom_chunk*, i32, i32) #1

declare dso_local i32 @crom_add_simple_text(%struct.crom_src*, %struct.crom_chunk*, i32*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
