; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_get_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_get_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addrpolicy = type { i32 }
%struct.policyqueue = type { %struct.in6_addrpolicy }

@CTL_NET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6CTL_ADDRCTLPOLICY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"sysctl(IPV6CTL_ADDRCTLPOLICY)\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"no source-address-selection policy is installed\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@policyhead = common dso_local global i32 0, align 4
@pc_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_policy() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca i64, align 8
  %3 = alloca %struct.in6_addrpolicy*, align 8
  %4 = alloca %struct.in6_addrpolicy*, align 8
  %5 = alloca %struct.in6_addrpolicy*, align 8
  %6 = alloca %struct.policyqueue*, align 8
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %8 = load i32, i32* @CTL_NET, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  %10 = load i32, i32* @PF_INET6, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @IPPROTO_IPV6, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @IPV6CTL_ADDRCTLPOLICY, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %17 = call i32 @nitems(i32* %16)
  %18 = call i64 @sysctl(i32* %15, i32 %17, %struct.in6_addrpolicy* null, i64* %2, i32* null, i32 0)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %0
  %23 = load i64, i64* %2, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %76

27:                                               ; preds = %22
  %28 = load i64, i64* %2, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i8* @malloc(i32 %29)
  %31 = bitcast i8* %30 to %struct.in6_addrpolicy*
  store %struct.in6_addrpolicy* %31, %struct.in6_addrpolicy** %3, align 8
  %32 = icmp eq %struct.in6_addrpolicy* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %27
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %38 = call i32 @nitems(i32* %37)
  %39 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %3, align 8
  %40 = call i64 @sysctl(i32* %36, i32 %38, %struct.in6_addrpolicy* %39, i64* %2, i32* null, i32 0)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35
  %45 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %3, align 8
  %46 = load i64, i64* %2, align 8
  %47 = udiv i64 %46, 4
  %48 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %45, i64 %47
  store %struct.in6_addrpolicy* %48, %struct.in6_addrpolicy** %5, align 8
  %49 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %3, align 8
  store %struct.in6_addrpolicy* %49, %struct.in6_addrpolicy** %4, align 8
  br label %50

50:                                               ; preds = %70, %44
  %51 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %4, align 8
  %52 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %51, i64 1
  %53 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %5, align 8
  %54 = icmp ule %struct.in6_addrpolicy* %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = call i8* @malloc(i32 4)
  %57 = bitcast i8* %56 to %struct.policyqueue*
  store %struct.policyqueue* %57, %struct.policyqueue** %6, align 8
  %58 = icmp eq %struct.policyqueue* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %55
  %62 = load %struct.policyqueue*, %struct.policyqueue** %6, align 8
  %63 = getelementptr inbounds %struct.policyqueue, %struct.policyqueue* %62, i32 0, i32 0
  %64 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %4, align 8
  %65 = bitcast %struct.in6_addrpolicy* %63 to i8*
  %66 = bitcast %struct.in6_addrpolicy* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = load %struct.policyqueue*, %struct.policyqueue** %6, align 8
  %68 = load i32, i32* @pc_entry, align 4
  %69 = call i32 @TAILQ_INSERT_TAIL(i32* @policyhead, %struct.policyqueue* %67, i32 %68)
  br label %70

70:                                               ; preds = %61
  %71 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %4, align 8
  %72 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %71, i32 1
  store %struct.in6_addrpolicy* %72, %struct.in6_addrpolicy** %4, align 8
  br label %50

73:                                               ; preds = %50
  %74 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %3, align 8
  %75 = call i32 @free(%struct.in6_addrpolicy* %74)
  br label %76

76:                                               ; preds = %73, %25
  ret void
}

declare dso_local i64 @sysctl(i32*, i32, %struct.in6_addrpolicy*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.policyqueue*, i32) #1

declare dso_local i32 @free(%struct.in6_addrpolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
