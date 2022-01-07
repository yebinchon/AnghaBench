; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_calcmtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_calcmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_addr = type { i32 }
%struct.in_conninfo = type { %struct.in6_addr, i32 }

@INC_ISIPV6 = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPV6_MMTU = common dso_local global i8* null, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.in6_addr*, i8*, i8**, i32*, i64)* @ip6_calcmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_calcmtu(%struct.ifnet* %0, %struct.in6_addr* %1, i8* %2, i8** %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.in_conninfo, align 4
  store %struct.ifnet* %0, %struct.ifnet** %7, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ugt i8* %18, null
  br i1 %19, label %20, label %59

20:                                               ; preds = %6
  %21 = call i32 @bzero(%struct.in_conninfo* %17, i32 8)
  %22 = load i32, i32* @INC_ISIPV6, align 4
  %23 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %17, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %17, i32 0, i32 0
  %27 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %28 = bitcast %struct.in6_addr* %26 to i8*
  %29 = bitcast %struct.in6_addr* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %31 = call i8* @IN6_LINKMTU(%struct.ifnet* %30)
  store i8* %31, i8** %16, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @IPPROTO_TCP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = call i8* @tcp_hc_getmtu(%struct.in_conninfo* %17)
  store i8* %36, i8** %13, align 8
  br label %37

37:                                               ; preds = %35, %20
  %38 = load i8*, i8** %13, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i8* @min(i8* %41, i8* %42)
  store i8* %43, i8** %13, align 8
  br label %46

44:                                               ; preds = %37
  %45 = load i8*, i8** %9, align 8
  store i8* %45, i8** %13, align 8
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i8*, i8** %13, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i8*, i8** %16, align 8
  store i8* %50, i8** %13, align 8
  br label %58

51:                                               ; preds = %46
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** @IPV6_MMTU, align 8
  %54 = icmp ult i8* %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  store i32 1, i32* %14, align 4
  %56 = load i8*, i8** @IPV6_MMTU, align 8
  store i8* %56, i8** %13, align 8
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %57, %49
  br label %68

59:                                               ; preds = %6
  %60 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %61 = icmp ne %struct.ifnet* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %64 = call i8* @IN6_LINKMTU(%struct.ifnet* %63)
  store i8* %64, i8** %13, align 8
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %65, %62
  br label %68

68:                                               ; preds = %67, %58
  %69 = load i8*, i8** %13, align 8
  %70 = load i8**, i8*** %10, align 8
  store i8* %69, i8** %70, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %14, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %15, align 4
  ret i32 %77
}

declare dso_local i32 @bzero(%struct.in_conninfo*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @IN6_LINKMTU(%struct.ifnet*) #1

declare dso_local i8* @tcp_hc_getmtu(%struct.in_conninfo*) #1

declare dso_local i8* @min(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
