; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pager.c_pbgetbo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pager.c_pbgetbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufobj = type { i32 }
%struct.buf = type { %struct.bufobj*, i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"pbgetbo: not free (vnode)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"pbgetbo: not free (bufobj)\00", align 1
@B_PAGING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pbgetbo(%struct.bufobj* %0, %struct.buf* %1) #0 {
  %3 = alloca %struct.bufobj*, align 8
  %4 = alloca %struct.buf*, align 8
  store %struct.bufobj* %0, %struct.bufobj** %3, align 8
  store %struct.buf* %1, %struct.buf** %4, align 8
  %5 = load %struct.buf*, %struct.buf** %4, align 8
  %6 = getelementptr inbounds %struct.buf, %struct.buf* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.buf*, %struct.buf** %4, align 8
  %12 = getelementptr inbounds %struct.buf, %struct.buf* %11, i32 0, i32 0
  %13 = load %struct.bufobj*, %struct.bufobj** %12, align 8
  %14 = icmp eq %struct.bufobj* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @B_PAGING, align 4
  %18 = load %struct.buf*, %struct.buf** %4, align 8
  %19 = getelementptr inbounds %struct.buf, %struct.buf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %23 = load %struct.buf*, %struct.buf** %4, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 0
  store %struct.bufobj* %22, %struct.bufobj** %24, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
