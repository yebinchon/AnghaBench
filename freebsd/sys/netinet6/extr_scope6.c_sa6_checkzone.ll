; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_sa6_checkzone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_scope6.c_sa6_checkzone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.sockaddr_in6 = type { i64, i32 }

@IPV6_ADDR_SCOPE_GLOBAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_LINKLOCAL = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_INTFACELOCAL = common dso_local global i32 0, align 4
@V_ip6_use_defzone = common dso_local global i64 0, align 8
@V_sid_default = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@V_loif = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa6_checkzone(%struct.sockaddr_in6* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in6*, align 8
  %4 = alloca i32, align 4
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %3, align 8
  %5 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %6 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %5, i32 0, i32 1
  %7 = call i32 @in6_addrscope(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @IPV6_ADDR_SCOPE_GLOBAL, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @EINVAL, align 4
  br label %19

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  store i32 %20, i32* %2, align 4
  br label %106

21:                                               ; preds = %1
  %22 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 1
  %24 = call i64 @IN6_IS_ADDR_MULTICAST(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IPV6_ADDR_SCOPE_LINKLOCAL, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @IPV6_ADDR_SCOPE_INTFACELOCAL, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i64, i64* @V_ip6_use_defzone, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_sid_default, i32 0, i32 0), align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %42, %39, %34
  store i32 0, i32* %2, align 4
  br label %106

51:                                               ; preds = %30, %26, %21
  %52 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %52, i32 0, i32 1
  %54 = call i64 @IN6_IS_ADDR_LOOPBACK(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %51
  %57 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %58 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @V_loif, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @in6_getscopezone(i32 %62, i32 %63)
  %65 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %66 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %78

67:                                               ; preds = %56
  %68 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %69 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @V_loif, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @in6_getscopezone(i32 %71, i32 %72)
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %76, i32* %2, align 4
  br label %106

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78, %51
  %80 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %81 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %106

85:                                               ; preds = %79
  %86 = load i64, i64* @V_ip6_use_defzone, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_sid_default, i32 0, i32 0), align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %95 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %88, %85
  %97 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %98 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @EADDRNOTAVAIL, align 4
  br label %104

104:                                              ; preds = %102, %101
  %105 = phi i32 [ 0, %101 ], [ %103, %102 ]
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %84, %75, %50, %19
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @in6_addrscope(i32*) #1

declare dso_local i64 @IN6_IS_ADDR_MULTICAST(i32*) #1

declare dso_local i64 @IN6_IS_ADDR_LOOPBACK(i32*) #1

declare dso_local i64 @in6_getscopezone(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
