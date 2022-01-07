; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/fhc/extr_fhc.c_fhc_intr_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/fhc/extr_fhc.c_fhc_intr_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_vector = type { i32, %struct.fhc_icarg* }
%struct.fhc_icarg = type { i32 }

@FHC_IMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fhc_intr_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fhc_intr_assign(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.intr_vector*, align 8
  %4 = alloca %struct.fhc_icarg*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.intr_vector*
  store %struct.intr_vector* %6, %struct.intr_vector** %3, align 8
  %7 = load %struct.intr_vector*, %struct.intr_vector** %3, align 8
  %8 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %7, i32 0, i32 1
  %9 = load %struct.fhc_icarg*, %struct.fhc_icarg** %8, align 8
  store %struct.fhc_icarg* %9, %struct.fhc_icarg** %4, align 8
  %10 = load %struct.fhc_icarg*, %struct.fhc_icarg** %4, align 8
  %11 = getelementptr inbounds %struct.fhc_icarg, %struct.fhc_icarg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FHC_IMAP, align 4
  %14 = load %struct.fhc_icarg*, %struct.fhc_icarg** %4, align 8
  %15 = getelementptr inbounds %struct.fhc_icarg, %struct.fhc_icarg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FHC_IMAP, align 4
  %18 = call i32 @bus_read_4(i32 %16, i32 %17)
  %19 = load %struct.intr_vector*, %struct.intr_vector** %3, align 8
  %20 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @INTMAP_TID(i32 %18, i32 %21)
  %23 = call i32 @bus_write_4(i32 %12, i32 %13, i32 %22)
  %24 = load %struct.fhc_icarg*, %struct.fhc_icarg** %4, align 8
  %25 = getelementptr inbounds %struct.fhc_icarg, %struct.fhc_icarg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FHC_IMAP, align 4
  %28 = call i32 @bus_read_4(i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @INTMAP_TID(i32, i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
