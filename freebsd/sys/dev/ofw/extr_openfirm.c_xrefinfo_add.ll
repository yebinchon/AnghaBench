; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_openfirm.c_xrefinfo_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_openfirm.c_xrefinfo_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xrefinfo = type { i32, i8*, i8* }

@M_OFWPROP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@xreflist_lock = common dso_local global i32 0, align 4
@xreflist = common dso_local global i32 0, align 4
@next_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xrefinfo* (i8*, i8*, i32)* @xrefinfo_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xrefinfo* @xrefinfo_add(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xrefinfo*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @M_OFWPROP, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = call %struct.xrefinfo* @malloc(i32 24, i32 %8, i32 %9)
  store %struct.xrefinfo* %10, %struct.xrefinfo** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.xrefinfo*, %struct.xrefinfo** %7, align 8
  %13 = getelementptr inbounds %struct.xrefinfo, %struct.xrefinfo* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.xrefinfo*, %struct.xrefinfo** %7, align 8
  %16 = getelementptr inbounds %struct.xrefinfo, %struct.xrefinfo* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.xrefinfo*, %struct.xrefinfo** %7, align 8
  %19 = getelementptr inbounds %struct.xrefinfo, %struct.xrefinfo* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = call i32 @mtx_lock(i32* @xreflist_lock)
  %21 = load %struct.xrefinfo*, %struct.xrefinfo** %7, align 8
  %22 = load i32, i32* @next_entry, align 4
  %23 = call i32 @SLIST_INSERT_HEAD(i32* @xreflist, %struct.xrefinfo* %21, i32 %22)
  %24 = call i32 @mtx_unlock(i32* @xreflist_lock)
  %25 = load %struct.xrefinfo*, %struct.xrefinfo** %7, align 8
  ret %struct.xrefinfo* %25
}

declare dso_local %struct.xrefinfo* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.xrefinfo*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
