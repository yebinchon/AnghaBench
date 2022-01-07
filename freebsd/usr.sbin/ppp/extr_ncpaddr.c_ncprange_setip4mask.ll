; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_setip4mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_setip4mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncprange = type { i64, i32, %struct.in_addr }
%struct.in_addr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncprange_setip4mask(%struct.ncprange* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca %struct.ncprange*, align 8
  %6 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  store %struct.ncprange* %0, %struct.ncprange** %5, align 8
  %7 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %8 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AF_INET, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

13:                                               ; preds = %2
  %14 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %15 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %14, i32 0, i32 2
  %16 = bitcast %struct.in_addr* %15 to i8*
  %17 = bitcast %struct.in_addr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mask42bits(i32 %19)
  %21 = load %struct.ncprange*, %struct.ncprange** %5, align 8
  %22 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  store i32 1, i32* %3, align 4
  br label %23

23:                                               ; preds = %13, %12
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mask42bits(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
