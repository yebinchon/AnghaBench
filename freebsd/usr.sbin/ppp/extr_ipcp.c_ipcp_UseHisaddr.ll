; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_UseHisaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_UseHisaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.ncp }
%struct.ncp = type { %struct.ipcp }
%struct.ipcp = type { %struct.in_addr, %struct.TYPE_6__, i32 }
%struct.in_addr = type { i64 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.ncpaddr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c",-\00", align 1
@INADDR_ANY = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: None available !\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: Invalid range !\0A\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: Not an AF_INET address !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipcp_UseHisaddr(%struct.bundle* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.in_addr, align 8
  %9 = alloca %struct.ncp*, align 8
  %10 = alloca %struct.ipcp*, align 8
  %11 = alloca %struct.ncpaddr, align 4
  %12 = alloca %struct.in_addr, align 8
  store %struct.bundle* %0, %struct.bundle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.bundle*, %struct.bundle** %5, align 8
  %14 = getelementptr inbounds %struct.bundle, %struct.bundle* %13, i32 0, i32 0
  store %struct.ncp* %14, %struct.ncp** %9, align 8
  %15 = load %struct.ncp*, %struct.ncp** %9, align 8
  %16 = getelementptr inbounds %struct.ncp, %struct.ncp* %15, i32 0, i32 0
  store %struct.ipcp* %16, %struct.ipcp** %10, align 8
  %17 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %18 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @memset(i32* %19, i8 signext 0, i32 4)
  %21 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %22 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = call i32 @iplist_reset(%struct.TYPE_7__* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strpbrk(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %82

28:                                               ; preds = %3
  %29 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %30 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @iplist_setsrc(%struct.TYPE_7__* %31, i8* %32)
  %34 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %35 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = call i64 @iplist_isvalid(%struct.TYPE_7__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %28
  %40 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %41 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = call i32 @iplist_setrandpos(%struct.TYPE_7__* %42)
  %44 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %45 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %44, i32 0, i32 0
  %46 = load %struct.bundle*, %struct.bundle** %5, align 8
  %47 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %48 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @ChooseHisAddr(%struct.bundle* %46, i32 %49)
  %51 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = bitcast %struct.in_addr* %45 to i8*
  %53 = bitcast %struct.in_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 8, i1 false)
  %54 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %55 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @INADDR_ANY, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %39
  %61 = load i32, i32* @LogWARN, align 4
  %62 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %63 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @log_Printf(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  store i32 0, i32* %4, align 4
  br label %136

68:                                               ; preds = %39
  %69 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %70 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %73 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @ncprange_setip4host(i32* %71, i64 %75)
  br label %81

77:                                               ; preds = %28
  %78 = load i32, i32* @LogWARN, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @log_Printf(i32 %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  store i32 0, i32* %4, align 4
  br label %136

81:                                               ; preds = %68
  br label %128

82:                                               ; preds = %3
  %83 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %84 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.ncp*, %struct.ncp** %9, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i64 @ncprange_aton(i32* %85, %struct.ncp* %86, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %126

90:                                               ; preds = %82
  %91 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %92 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = call i64 @ncprange_family(i32* %93)
  %95 = load i64, i64* @AF_INET, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* @LogWARN, align 4
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @log_Printf(i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %99)
  store i32 0, i32* %4, align 4
  br label %136

101:                                              ; preds = %90
  %102 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %103 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = call i32 @ncprange_getip4addr(i32* %104, %struct.in_addr* %8)
  %106 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %107 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %110 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %109, i32 0, i32 0
  %111 = call i32 @ncprange_getip4addr(i32* %108, %struct.in_addr* %110)
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %101
  %115 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %116 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %117 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %117, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @ipcp_SetIPaddress(%struct.ipcp* %115, i64 %119, i64 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %136

125:                                              ; preds = %114, %101
  br label %127

126:                                              ; preds = %82
  store i32 0, i32* %4, align 4
  br label %136

127:                                              ; preds = %125
  br label %128

128:                                              ; preds = %127, %81
  %129 = load %struct.ipcp*, %struct.ipcp** %10, align 8
  %130 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @ncpaddr_setip4(%struct.ncpaddr* %11, i64 %132)
  %134 = load %struct.bundle*, %struct.bundle** %5, align 8
  %135 = call i32 @bundle_AdjustFilters(%struct.bundle* %134, i32* null, %struct.ncpaddr* %11)
  store i32 1, i32* %4, align 4
  br label %136

136:                                              ; preds = %128, %126, %124, %97, %77, %60
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i32 @iplist_reset(%struct.TYPE_7__*) #1

declare dso_local i64 @strpbrk(i8*, i8*) #1

declare dso_local i32 @iplist_setsrc(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @iplist_isvalid(%struct.TYPE_7__*) #1

declare dso_local i32 @iplist_setrandpos(%struct.TYPE_7__*) #1

declare dso_local i64 @ChooseHisAddr(%struct.bundle*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @log_Printf(i32, i8*, i8*) #1

declare dso_local i32 @ncprange_setip4host(i32*, i64) #1

declare dso_local i64 @ncprange_aton(i32*, %struct.ncp*, i8*) #1

declare dso_local i64 @ncprange_family(i32*) #1

declare dso_local i32 @ncprange_getip4addr(i32*, %struct.in_addr*) #1

declare dso_local i32 @ipcp_SetIPaddress(%struct.ipcp*, i64, i64) #1

declare dso_local i32 @ncpaddr_setip4(%struct.ncpaddr*, i64) #1

declare dso_local i32 @bundle_AdjustFilters(%struct.bundle*, i32*, %struct.ncpaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
