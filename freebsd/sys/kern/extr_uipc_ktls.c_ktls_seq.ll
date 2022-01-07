; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_ktls.c_ktls_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_ktls.c_ktls_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i32 }
%struct.mbuf = type { i32, %struct.TYPE_2__, %struct.mbuf* }
%struct.TYPE_2__ = type { %struct.mbuf_ext_pgs* }
%struct.mbuf_ext_pgs = type { i32 }

@M_NOMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ktls_seq: mapped mbuf %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktls_seq(%struct.sockbuf* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.sockbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf_ext_pgs*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  br label %6

6:                                                ; preds = %33, %2
  %7 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %8 = icmp ne %struct.mbuf* %7, null
  br i1 %8, label %9, label %37

9:                                                ; preds = %6
  %10 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %11 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @M_NOMAP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %18 = bitcast %struct.mbuf* %17 to i8*
  %19 = call i32 @KASSERT(i32 %16, i8* %18)
  %20 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %22, align 8
  store %struct.mbuf_ext_pgs* %23, %struct.mbuf_ext_pgs** %5, align 8
  %24 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %25 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %5, align 8
  %28 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %30 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %9
  %34 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 2
  %36 = load %struct.mbuf*, %struct.mbuf** %35, align 8
  store %struct.mbuf* %36, %struct.mbuf** %4, align 8
  br label %6

37:                                               ; preds = %6
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
