; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_icmp6.c_icmp6_ctloutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_icmp6.c_icmp6_ctloutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i32, i32, i32, i32 }
%struct.inpcb = type { %struct.icmp6_filter* }
%struct.icmp6_filter = type { i32 }

@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icmp6_ctloutput(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.icmp6_filter, align 4
  %13 = alloca %struct.icmp6_filter, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.socket*, %struct.socket** %4, align 8
  %15 = call %struct.inpcb* @sotoinpcb(%struct.socket* %14)
  store %struct.inpcb* %15, %struct.inpcb** %8, align 8
  %16 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %17 = icmp ne %struct.sockopt* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %20 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %23 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %26 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %29 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %88

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  switch i32 %39, label %86 [
    i32 128, label %40
    i32 129, label %69
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* %11, align 4
  switch i32 %41, label %66 [
    i32 130, label %42
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 4
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @EMSGSIZE, align 4
  store i32 %47, i32* %6, align 4
  br label %68

48:                                               ; preds = %42
  %49 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @sooptcopyin(%struct.sockopt* %49, %struct.icmp6_filter* %12, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %57 = call i32 @INP_WLOCK(%struct.inpcb* %56)
  %58 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %59 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %58, i32 0, i32 0
  %60 = load %struct.icmp6_filter*, %struct.icmp6_filter** %59, align 8
  %61 = bitcast %struct.icmp6_filter* %60 to i8*
  %62 = bitcast %struct.icmp6_filter* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %64 = call i32 @INP_WUNLOCK(%struct.inpcb* %63)
  br label %65

65:                                               ; preds = %55, %48
  br label %68

66:                                               ; preds = %40
  %67 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %65, %46
  br label %86

69:                                               ; preds = %38
  %70 = load i32, i32* %11, align 4
  switch i32 %70, label %83 [
    i32 130, label %71
  ]

71:                                               ; preds = %69
  %72 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %73 = call i32 @INP_RLOCK(%struct.inpcb* %72)
  %74 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %75 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %74, i32 0, i32 0
  %76 = load %struct.icmp6_filter*, %struct.icmp6_filter** %75, align 8
  %77 = bitcast %struct.icmp6_filter* %13 to i8*
  %78 = bitcast %struct.icmp6_filter* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 4, i1 false)
  %79 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %80 = call i32 @INP_RUNLOCK(%struct.inpcb* %79)
  %81 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %82 = call i32 @sooptcopyout(%struct.sockopt* %81, %struct.icmp6_filter* %13, i32 4)
  store i32 %82, i32* %6, align 4
  br label %85

83:                                               ; preds = %69
  %84 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %71
  br label %86

86:                                               ; preds = %38, %85, %68
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %36
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, %struct.icmp6_filter*, i32, i32) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_RLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_RUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, %struct.icmp6_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
