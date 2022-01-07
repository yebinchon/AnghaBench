; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bpmap_qenter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bpmap_qenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i8*, i32, i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*)* @bpmap_qenter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpmap_qenter(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %2, align 8
  %3 = load %struct.buf*, %struct.buf** %2, align 8
  %4 = call i32 @BUF_CHECK_MAPPED(%struct.buf* %3)
  %5 = load %struct.buf*, %struct.buf** %2, align 8
  %6 = getelementptr inbounds %struct.buf, %struct.buf* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = ptrtoint i8* %7 to i32
  %9 = call i64 @trunc_page(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  %11 = load %struct.buf*, %struct.buf** %2, align 8
  %12 = getelementptr inbounds %struct.buf, %struct.buf* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.buf*, %struct.buf** %2, align 8
  %14 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.buf*, %struct.buf** %2, align 8
  %18 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.buf*, %struct.buf** %2, align 8
  %21 = getelementptr inbounds %struct.buf, %struct.buf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pmap_qenter(i32 %16, i32 %19, i32 %22)
  %24 = load %struct.buf*, %struct.buf** %2, align 8
  %25 = getelementptr inbounds %struct.buf, %struct.buf* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.buf*, %struct.buf** %2, align 8
  %29 = getelementptr inbounds %struct.buf, %struct.buf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PAGE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = or i32 %27, %32
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.buf*, %struct.buf** %2, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  ret void
}

declare dso_local i32 @BUF_CHECK_MAPPED(%struct.buf*) #1

declare dso_local i64 @trunc_page(i32) #1

declare dso_local i32 @pmap_qenter(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
