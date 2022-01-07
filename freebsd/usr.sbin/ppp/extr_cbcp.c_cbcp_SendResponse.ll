; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_cbcp.c_cbcp_SendResponse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_cbcp.c_cbcp_SendResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbcp = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i32, i32, i64*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cbcp_data = type { i64, i8*, i32, i32 }
%struct.cbcp_addr = type { i8*, i32 }

@LogCBCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: SendResponse(%d) state = %s\0A\00", align 1
@CBCP_NONUM = common dso_local global i64 0, align 8
@CBCP_ADDR_PSTN = common dso_local global i32 0, align 4
@CBCP_RESPONSE = common dso_local global i32 0, align 4
@CBCP_RESPSENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbcp*)* @cbcp_SendResponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbcp_SendResponse(%struct.cbcp* %0) #0 {
  %2 = alloca %struct.cbcp*, align 8
  %3 = alloca %struct.cbcp_data, align 8
  %4 = alloca %struct.cbcp_addr*, align 8
  store %struct.cbcp* %0, %struct.cbcp** %2, align 8
  %5 = load i32, i32* @LogCBCP, align 4
  %6 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %7 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %14 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %18 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @cbcpstate(i32 %20)
  %22 = call i32 @log_Printf(i32 %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16, i32 %21)
  %23 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %24 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.cbcp_data, %struct.cbcp_data* %3, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %29 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.cbcp_data, %struct.cbcp_data* %3, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.cbcp_data, %struct.cbcp_data* %3, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to %struct.cbcp_addr*
  store %struct.cbcp_addr* %35, %struct.cbcp_addr** %4, align 8
  %36 = getelementptr inbounds %struct.cbcp_data, %struct.cbcp_data* %3, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CBCP_NONUM, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.cbcp_data, %struct.cbcp_data* %3, i32 0, i32 3
  %42 = bitcast i32* %41 to i8*
  %43 = bitcast %struct.cbcp_data* %3 to i8*
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.cbcp_data, %struct.cbcp_data* %3, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  br label %98

49:                                               ; preds = %1
  %50 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %51 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %88

56:                                               ; preds = %49
  %57 = load i32, i32* @CBCP_ADDR_PSTN, align 4
  %58 = load %struct.cbcp_addr*, %struct.cbcp_addr** %4, align 8
  %59 = getelementptr inbounds %struct.cbcp_addr, %struct.cbcp_addr* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.cbcp_addr*, %struct.cbcp_addr** %4, align 8
  %61 = getelementptr inbounds %struct.cbcp_addr, %struct.cbcp_addr* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %64 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i64*, i64** %65, align 8
  %67 = call i32 @strncpy(i8* %62, i64* %66, i32 7)
  %68 = load %struct.cbcp_addr*, %struct.cbcp_addr** %4, align 8
  %69 = getelementptr inbounds %struct.cbcp_addr, %struct.cbcp_addr* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 7
  store i8 0, i8* %71, align 1
  %72 = load %struct.cbcp_addr*, %struct.cbcp_addr** %4, align 8
  %73 = getelementptr inbounds %struct.cbcp_addr, %struct.cbcp_addr* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.cbcp_addr*, %struct.cbcp_addr** %4, align 8
  %76 = getelementptr inbounds %struct.cbcp_addr, %struct.cbcp_addr* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %74, i64 %79
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = bitcast %struct.cbcp_data* %3 to i8*
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.cbcp_data, %struct.cbcp_data* %3, i32 0, i32 2
  store i32 %86, i32* %87, align 8
  br label %97

88:                                               ; preds = %49
  %89 = getelementptr inbounds %struct.cbcp_data, %struct.cbcp_data* %3, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = bitcast %struct.cbcp_data* %3 to i8*
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds %struct.cbcp_data, %struct.cbcp_data* %3, i32 0, i32 2
  store i32 %95, i32* %96, align 8
  br label %97

97:                                               ; preds = %88, %56
  br label %98

98:                                               ; preds = %97, %40
  %99 = call i32 @cbcp_data_Show(%struct.cbcp_data* %3)
  %100 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %101 = load i32, i32* @CBCP_RESPONSE, align 4
  %102 = call i32 @cbcp_Output(%struct.cbcp* %100, i32 %101, %struct.cbcp_data* %3)
  %103 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %104 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %109 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %110 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @cbcp_StartTimer(%struct.cbcp* %108, i32 %112)
  %114 = load %struct.cbcp*, %struct.cbcp** %2, align 8
  %115 = load i32, i32* @CBCP_RESPSENT, align 4
  %116 = call i32 @cbcp_NewPhase(%struct.cbcp* %114, i32 %115)
  ret void
}

declare dso_local i32 @log_Printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @cbcpstate(i32) #1

declare dso_local i32 @strncpy(i8*, i64*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cbcp_data_Show(%struct.cbcp_data*) #1

declare dso_local i32 @cbcp_Output(%struct.cbcp*, i32, %struct.cbcp_data*) #1

declare dso_local i32 @cbcp_StartTimer(%struct.cbcp*, i32) #1

declare dso_local i32 @cbcp_NewPhase(%struct.cbcp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
