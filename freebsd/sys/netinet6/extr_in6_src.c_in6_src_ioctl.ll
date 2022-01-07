; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_src.c_in6_src_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_src.c_in6_src_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addrpolicy = type { i64, i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ADDR_LABEL_NOTAPP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_src_ioctl(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.in6_addrpolicy, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 129
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 128
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %9, %2
  %15 = load i64, i64* %5, align 8
  %16 = inttoptr i64 %15 to %struct.in6_addrpolicy*
  %17 = bitcast %struct.in6_addrpolicy* %6 to i8*
  %18 = bitcast %struct.in6_addrpolicy* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  %19 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ADDR_LABEL_NOTAPP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %45

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %6, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i64 @in6_mask2len(i32* %27, i32* null)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %6, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %6, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @IN6_MASK_ADDR(i32* %34, i32* %36)
  %38 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %6, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %4, align 4
  switch i32 %39, label %44 [
    i32 129, label %40
    i32 128, label %42
  ]

40:                                               ; preds = %32
  %41 = call i32 @add_addrsel_policyent(%struct.in6_addrpolicy* %6)
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; preds = %32
  %43 = call i32 @delete_addrsel_policyent(%struct.in6_addrpolicy* %6)
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %42, %40, %30, %23, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @in6_mask2len(i32*, i32*) #2

declare dso_local i32 @IN6_MASK_ADDR(i32*, i32*) #2

declare dso_local i32 @add_addrsel_policyent(%struct.in6_addrpolicy*) #2

declare dso_local i32 @delete_addrsel_policyent(%struct.in6_addrpolicy*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
