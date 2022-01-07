; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_dump.c_cb_dumphdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_dump.c_cb_dumphdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_pa = type { i64, i8* }
%struct.dumperinfo = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i8*, i32, i8*, i32, i32, i32 }

@PT_LOAD = common dso_local global i32 0, align 4
@PF_R = common dso_local global i32 0, align 4
@fileofs = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@do_minidump = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dump_pa*, i32, i8*)* @cb_dumphdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_dumphdr(%struct.dump_pa* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.dump_pa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dumperinfo*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.dump_pa* %0, %struct.dump_pa** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.dumperinfo*
  store %struct.dumperinfo* %12, %struct.dumperinfo** %7, align 8
  %13 = load %struct.dump_pa*, %struct.dump_pa** %4, align 8
  %14 = getelementptr inbounds %struct.dump_pa, %struct.dump_pa* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %9, align 8
  %16 = call i32 @bzero(%struct.TYPE_3__* %8, i32 56)
  %17 = load i32, i32* @PT_LOAD, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 7
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @PF_R, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @fileofs, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  store i32 %21, i32* %22, align 8
  %23 = load %struct.dump_pa*, %struct.dump_pa** %4, align 8
  %24 = getelementptr inbounds %struct.dump_pa, %struct.dump_pa* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load %struct.dump_pa*, %struct.dump_pa** %4, align 8
  %28 = getelementptr inbounds %struct.dump_pa, %struct.dump_pa* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32 %35, i32* %36, align 8
  %37 = load %struct.dumperinfo*, %struct.dumperinfo** %7, align 8
  %38 = bitcast %struct.TYPE_3__* %8 to i8*
  %39 = call i32 @dumpsys_buf_write(%struct.dumperinfo* %37, i8* %38, i32 56)
  store i32 %39, i32* %10, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @fileofs, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %41, i64 %43
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* @fileofs, align 4
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

declare dso_local i32 @bzero(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dumpsys_buf_write(%struct.dumperinfo*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
