; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptnr/extr_hptnr_os_bsd.c_freelist_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptnr/extr_hptnr_os_bsd.c_freelist_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freelist = type { i64, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freelist_put(%struct.freelist* %0, i8* %1) #0 {
  %3 = alloca %struct.freelist*, align 8
  %4 = alloca i8*, align 8
  store %struct.freelist* %0, %struct.freelist** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.freelist*, %struct.freelist** %3, align 8
  %6 = getelementptr inbounds %struct.freelist, %struct.freelist* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @HPT_ASSERT(i32 %9)
  %11 = load %struct.freelist*, %struct.freelist** %3, align 8
  %12 = getelementptr inbounds %struct.freelist, %struct.freelist* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 8
  %15 = load %struct.freelist*, %struct.freelist** %3, align 8
  %16 = getelementptr inbounds %struct.freelist, %struct.freelist* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to i8**
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.freelist*, %struct.freelist** %3, align 8
  %22 = getelementptr inbounds %struct.freelist, %struct.freelist* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  ret void
}

declare dso_local i32 @HPT_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
