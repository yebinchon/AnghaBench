; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_create_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_create_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)*, %struct.qlnxr_iw_listener*, i32 (%struct.iw_cm_id*)*, i32, i32 }
%struct.qlnxr_iw_listener = type { i32, i32, %struct.iw_cm_id*, %struct.qlnxr_dev* }
%struct.qlnxr_dev = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ecore_iwarp_listen_in = type { i32, i32, i32, i64, i32*, i32, i32, %struct.qlnxr_iw_listener* }
%struct.ecore_iwarp_listen_out = type { i32, i32, i32, i64, i32*, i32, i32, %struct.qlnxr_iw_listener* }
%struct.sockaddr_in = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"listener memory alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@qlnxr_iw_event_handler = common dso_local global i32 0, align 4
@ECORE_TCP_IPV4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"[%d.%d.%d.%d, %d] iparamsport=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"ecore_iwarp_create_listen failed rc = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"exit [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_iw_create_listen(%struct.iw_cm_id* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iw_cm_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlnxr_dev*, align 8
  %7 = alloca %struct.qlnxr_iw_listener*, align 8
  %8 = alloca %struct.ecore_iwarp_listen_in, align 8
  %9 = alloca %struct.ecore_iwarp_listen_out, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %14 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %15)
  store %struct.qlnxr_dev* %16, %struct.qlnxr_dev** %6, align 8
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %18 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %11, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %21 = call i32 (%struct.TYPE_8__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_8__* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %132

33:                                               ; preds = %2
  %34 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %35 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %34, i32 0, i32 3
  %36 = bitcast i32* %35 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %36, %struct.sockaddr_in** %10, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.qlnxr_iw_listener* @kzalloc(i32 24, i32 %37)
  store %struct.qlnxr_iw_listener* %38, %struct.qlnxr_iw_listener** %7, align 8
  %39 = load %struct.qlnxr_iw_listener*, %struct.qlnxr_iw_listener** %7, align 8
  %40 = icmp eq %struct.qlnxr_iw_listener* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = call i32 (%struct.TYPE_8__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_8__* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %132

46:                                               ; preds = %33
  %47 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %48 = load %struct.qlnxr_iw_listener*, %struct.qlnxr_iw_listener** %7, align 8
  %49 = getelementptr inbounds %struct.qlnxr_iw_listener, %struct.qlnxr_iw_listener* %48, i32 0, i32 3
  store %struct.qlnxr_dev* %47, %struct.qlnxr_dev** %49, align 8
  %50 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %51 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %50, i32 0, i32 2
  %52 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %51, align 8
  %53 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %54 = call i32 %52(%struct.iw_cm_id* %53)
  %55 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %56 = load %struct.qlnxr_iw_listener*, %struct.qlnxr_iw_listener** %7, align 8
  %57 = getelementptr inbounds %struct.qlnxr_iw_listener, %struct.qlnxr_iw_listener* %56, i32 0, i32 2
  store %struct.iw_cm_id* %55, %struct.iw_cm_id** %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.qlnxr_iw_listener*, %struct.qlnxr_iw_listener** %7, align 8
  %60 = getelementptr inbounds %struct.qlnxr_iw_listener, %struct.qlnxr_iw_listener* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = bitcast %struct.ecore_iwarp_listen_in* %8 to %struct.ecore_iwarp_listen_out*
  %62 = call i32 @memset(%struct.ecore_iwarp_listen_out* %61, i32 0, i32 48)
  %63 = call i32 @memset(%struct.ecore_iwarp_listen_out* %9, i32 0, i32 48)
  %64 = load %struct.qlnxr_iw_listener*, %struct.qlnxr_iw_listener** %7, align 8
  %65 = getelementptr inbounds %struct.ecore_iwarp_listen_in, %struct.ecore_iwarp_listen_in* %8, i32 0, i32 7
  store %struct.qlnxr_iw_listener* %64, %struct.qlnxr_iw_listener** %65, align 8
  %66 = load i32, i32* @qlnxr_iw_event_handler, align 4
  %67 = getelementptr inbounds %struct.ecore_iwarp_listen_in, %struct.ecore_iwarp_listen_in* %8, i32 0, i32 6
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = getelementptr inbounds %struct.ecore_iwarp_listen_in, %struct.ecore_iwarp_listen_in* %8, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = load i32, i32* @ECORE_TCP_IPV4, align 4
  %71 = getelementptr inbounds %struct.ecore_iwarp_listen_in, %struct.ecore_iwarp_listen_in* %8, i32 0, i32 5
  store i32 %70, i32* %71, align 8
  %72 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ntohl(i32 %75)
  %77 = getelementptr inbounds %struct.ecore_iwarp_listen_in, %struct.ecore_iwarp_listen_in* %8, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %76, i32* %79, align 4
  %80 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ntohs(i32 %82)
  %84 = getelementptr inbounds %struct.ecore_iwarp_listen_in, %struct.ecore_iwarp_listen_in* %8, i32 0, i32 2
  store i32 %83, i32* %84, align 8
  %85 = getelementptr inbounds %struct.ecore_iwarp_listen_in, %struct.ecore_iwarp_listen_in* %8, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %87 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @NIPQUAD(i32 %90)
  %92 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %93 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.ecore_iwarp_listen_in, %struct.ecore_iwarp_listen_in* %8, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (%struct.TYPE_8__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_8__* %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %94, i32 %96)
  %98 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %99 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = bitcast %struct.ecore_iwarp_listen_in* %8 to %struct.ecore_iwarp_listen_out*
  %102 = call i32 @ecore_iwarp_create_listen(i32 %100, %struct.ecore_iwarp_listen_out* %101, %struct.ecore_iwarp_listen_out* %9)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %46
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i32 (%struct.TYPE_8__*, i8*, ...) @QL_DPRINT11(%struct.TYPE_8__* %106, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  br label %120

109:                                              ; preds = %46
  %110 = getelementptr inbounds %struct.ecore_iwarp_listen_out, %struct.ecore_iwarp_listen_out* %9, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.qlnxr_iw_listener*, %struct.qlnxr_iw_listener** %7, align 8
  %113 = getelementptr inbounds %struct.qlnxr_iw_listener, %struct.qlnxr_iw_listener* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.qlnxr_iw_listener*, %struct.qlnxr_iw_listener** %7, align 8
  %115 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %116 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %115, i32 0, i32 1
  store %struct.qlnxr_iw_listener* %114, %struct.qlnxr_iw_listener** %116, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %118 = call i32 (%struct.TYPE_8__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_8__* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %3, align 4
  br label %132

120:                                              ; preds = %105
  %121 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %122 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %121, i32 0, i32 0
  %123 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %122, align 8
  %124 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %125 = call i32 %123(%struct.iw_cm_id* %124)
  %126 = load %struct.qlnxr_iw_listener*, %struct.qlnxr_iw_listener** %7, align 8
  %127 = call i32 @kfree(%struct.qlnxr_iw_listener* %126)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 (%struct.TYPE_8__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_8__* %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %120, %109, %41, %30
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local %struct.qlnxr_iw_listener* @kzalloc(i32, i32) #1

declare dso_local i32 @QL_DPRINT11(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @memset(%struct.ecore_iwarp_listen_out*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @NIPQUAD(i32) #1

declare dso_local i32 @ecore_iwarp_create_listen(i32, %struct.ecore_iwarp_listen_out*, %struct.ecore_iwarp_listen_out*) #1

declare dso_local i32 @kfree(%struct.qlnxr_iw_listener*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
