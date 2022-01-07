; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_uio.c_cloneuio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_uio.c_cloneuio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i32, %struct.iovec* }
%struct.iovec = type { i32 }

@M_IOV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uio* @cloneuio(%struct.uio* %0) #0 {
  %2 = alloca %struct.uio*, align 8
  %3 = alloca %struct.uio*, align 8
  %4 = alloca i32, align 4
  store %struct.uio* %0, %struct.uio** %2, align 8
  %5 = load %struct.uio*, %struct.uio** %2, align 8
  %6 = getelementptr inbounds %struct.uio, %struct.uio* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 %12, 16
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @M_IOV, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = call %struct.uio* @malloc(i32 %14, i32 %15, i32 %16)
  store %struct.uio* %17, %struct.uio** %3, align 8
  %18 = load %struct.uio*, %struct.uio** %3, align 8
  %19 = load %struct.uio*, %struct.uio** %2, align 8
  %20 = bitcast %struct.uio* %18 to i8*
  %21 = bitcast %struct.uio* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load %struct.uio*, %struct.uio** %3, align 8
  %23 = getelementptr inbounds %struct.uio, %struct.uio* %22, i64 1
  %24 = bitcast %struct.uio* %23 to %struct.iovec*
  %25 = load %struct.uio*, %struct.uio** %3, align 8
  %26 = getelementptr inbounds %struct.uio, %struct.uio* %25, i32 0, i32 1
  store %struct.iovec* %24, %struct.iovec** %26, align 8
  %27 = load %struct.uio*, %struct.uio** %2, align 8
  %28 = getelementptr inbounds %struct.uio, %struct.uio* %27, i32 0, i32 1
  %29 = load %struct.iovec*, %struct.iovec** %28, align 8
  %30 = load %struct.uio*, %struct.uio** %3, align 8
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %30, i32 0, i32 1
  %32 = load %struct.iovec*, %struct.iovec** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @bcopy(%struct.iovec* %29, %struct.iovec* %32, i32 %33)
  %35 = load %struct.uio*, %struct.uio** %3, align 8
  ret %struct.uio* %35
}

declare dso_local %struct.uio* @malloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bcopy(%struct.iovec*, %struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
