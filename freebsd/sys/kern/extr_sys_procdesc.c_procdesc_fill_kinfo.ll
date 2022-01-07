; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_procdesc_fill_kinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_procdesc_fill_kinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.procdesc* }
%struct.procdesc = type { i32 }
%struct.kinfo_file = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.filedesc = type { i32 }

@KF_TYPE_PROCDESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kinfo_file*, %struct.filedesc*)* @procdesc_fill_kinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @procdesc_fill_kinfo(%struct.file* %0, %struct.kinfo_file* %1, %struct.filedesc* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kinfo_file*, align 8
  %6 = alloca %struct.filedesc*, align 8
  %7 = alloca %struct.procdesc*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.kinfo_file* %1, %struct.kinfo_file** %5, align 8
  store %struct.filedesc* %2, %struct.filedesc** %6, align 8
  %8 = load i32, i32* @KF_TYPE_PROCDESC, align 4
  %9 = load %struct.kinfo_file*, %struct.kinfo_file** %5, align 8
  %10 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.procdesc*, %struct.procdesc** %12, align 8
  store %struct.procdesc* %13, %struct.procdesc** %7, align 8
  %14 = load %struct.procdesc*, %struct.procdesc** %7, align 8
  %15 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.kinfo_file*, %struct.kinfo_file** %5, align 8
  %18 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
