; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_bounce_bus_dmamap_waitok.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c_bounce_bus_dmamap_waitok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32*, i32, %struct.memdesc }
%struct.memdesc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*, %struct.memdesc*, i32*, i8*)* @bounce_bus_dmamap_waitok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bounce_bus_dmamap_waitok(i32 %0, %struct.TYPE_3__* %1, %struct.memdesc* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.memdesc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store %struct.memdesc* %2, %struct.memdesc** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %29

14:                                               ; preds = %5
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %17 = load %struct.memdesc*, %struct.memdesc** %8, align 8
  %18 = bitcast %struct.memdesc* %16 to i8*
  %19 = bitcast %struct.memdesc* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
