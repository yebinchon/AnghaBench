; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_setup_rxqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_setup_rxqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { %struct.netfront_rxq* }
%struct.netfront_rxq = type { i32, %struct.TYPE_2__, i32, i32, i8*, i8**, i32**, i32, i32, %struct.netfront_info* }
%struct.TYPE_2__ = type { %struct.netfront_rxq* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GRANT_REF_INVALID = common dso_local global i8* null, align 8
@XN_QUEUE_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"xnrx_%u\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"netfront receive lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@NET_RX_RING_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"allocating rx gref\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"granting rx ring page\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.netfront_info*, i64)* @setup_rxqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_rxqs(i32 %0, %struct.netfront_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.netfront_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.netfront_rxq*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.netfront_info* %1, %struct.netfront_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = mul i64 64, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @M_DEVBUF, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.netfront_rxq* @malloc(i32 %15, i32 %16, i32 %19)
  %21 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %22 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %21, i32 0, i32 0
  store %struct.netfront_rxq* %20, %struct.netfront_rxq** %22, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %121, %3
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %7, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %124

28:                                               ; preds = %23
  %29 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %30 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %29, i32 0, i32 0
  %31 = load %struct.netfront_rxq*, %struct.netfront_rxq** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %31, i64 %33
  store %struct.netfront_rxq* %34, %struct.netfront_rxq** %12, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.netfront_rxq*, %struct.netfront_rxq** %12, align 8
  %37 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %39 = load %struct.netfront_rxq*, %struct.netfront_rxq** %12, align 8
  %40 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %39, i32 0, i32 9
  store %struct.netfront_info* %38, %struct.netfront_info** %40, align 8
  %41 = load i8*, i8** @GRANT_REF_INVALID, align 8
  %42 = load %struct.netfront_rxq*, %struct.netfront_rxq** %12, align 8
  %43 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.netfront_rxq*, %struct.netfront_rxq** %12, align 8
  %45 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store %struct.netfront_rxq* null, %struct.netfront_rxq** %46, align 8
  %47 = load %struct.netfront_rxq*, %struct.netfront_rxq** %12, align 8
  %48 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @XN_QUEUE_NAME_LEN, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @snprintf(i32 %49, i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.netfront_rxq*, %struct.netfront_rxq** %12, align 8
  %54 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %53, i32 0, i32 8
  %55 = load %struct.netfront_rxq*, %struct.netfront_rxq** %12, align 8
  %56 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MTX_DEF, align 4
  %59 = call i32 @mtx_init(i32* %54, i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %78, %28
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @NET_RX_RING_SIZE, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load %struct.netfront_rxq*, %struct.netfront_rxq** %12, align 8
  %66 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %65, i32 0, i32 6
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  store i32* null, i32** %70, align 8
  %71 = load i8*, i8** @GRANT_REF_INVALID, align 8
  %72 = load %struct.netfront_rxq*, %struct.netfront_rxq** %12, align 8
  %73 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %72, i32 0, i32 5
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  store i8* %71, i8** %77, align 8
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %60

81:                                               ; preds = %60
  %82 = load i32, i32* @NET_RX_RING_SIZE, align 4
  %83 = load %struct.netfront_rxq*, %struct.netfront_rxq** %12, align 8
  %84 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %83, i32 0, i32 2
  %85 = call i64 @gnttab_alloc_grant_references(i32 %82, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @device_printf(i32 %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @ENOMEM, align 4
  store i32 %90, i32* %10, align 4
  br label %136

91:                                               ; preds = %81
  %92 = load i32, i32* @PAGE_SIZE, align 4
  %93 = load i32, i32* @M_DEVBUF, align 4
  %94 = load i32, i32* @M_WAITOK, align 4
  %95 = load i32, i32* @M_ZERO, align 4
  %96 = or i32 %94, %95
  %97 = call %struct.netfront_rxq* @malloc(i32 %92, i32 %93, i32 %96)
  %98 = bitcast %struct.netfront_rxq* %97 to i32*
  store i32* %98, i32** %11, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @SHARED_RING_INIT(i32* %99)
  %101 = load %struct.netfront_rxq*, %struct.netfront_rxq** %12, align 8
  %102 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %101, i32 0, i32 1
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = call i32 @FRONT_RING_INIT(%struct.TYPE_2__* %102, i32* %103, i32 %104)
  %106 = load i32, i32* %5, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @virt_to_mfn(i32* %107)
  %109 = load %struct.netfront_rxq*, %struct.netfront_rxq** %12, align 8
  %110 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %109, i32 0, i32 4
  %111 = call i32 @xenbus_grant_ring(i32 %106, i32 %108, i8** %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %91
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @device_printf(i32 %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %125

117:                                              ; preds = %91
  %118 = load %struct.netfront_rxq*, %struct.netfront_rxq** %12, align 8
  %119 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %118, i32 0, i32 3
  %120 = call i32 @callout_init(i32* %119, i32 1)
  br label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %23

124:                                              ; preds = %23
  store i32 0, i32* %4, align 4
  br label %165

125:                                              ; preds = %114
  %126 = load %struct.netfront_rxq*, %struct.netfront_rxq** %12, align 8
  %127 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @gnttab_free_grant_references(i32 %128)
  %130 = load %struct.netfront_rxq*, %struct.netfront_rxq** %12, align 8
  %131 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load %struct.netfront_rxq*, %struct.netfront_rxq** %132, align 8
  %134 = load i32, i32* @M_DEVBUF, align 4
  %135 = call i32 @free(%struct.netfront_rxq* %133, i32 %134)
  br label %136

136:                                              ; preds = %125, %87
  br label %137

137:                                              ; preds = %155, %136
  %138 = load i32, i32* %8, align 4
  %139 = icmp sge i32 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %137
  %141 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %142 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %141, i32 0, i32 0
  %143 = load %struct.netfront_rxq*, %struct.netfront_rxq** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %143, i64 %145
  %147 = call i32 @disconnect_rxq(%struct.netfront_rxq* %146)
  %148 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %149 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %148, i32 0, i32 0
  %150 = load %struct.netfront_rxq*, %struct.netfront_rxq** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %150, i64 %152
  %154 = call i32 @destroy_rxq(%struct.netfront_rxq* %153)
  br label %155

155:                                              ; preds = %140
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %8, align 4
  br label %137

158:                                              ; preds = %137
  %159 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %160 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %159, i32 0, i32 0
  %161 = load %struct.netfront_rxq*, %struct.netfront_rxq** %160, align 8
  %162 = load i32, i32* @M_DEVBUF, align 4
  %163 = call i32 @free(%struct.netfront_rxq* %161, i32 %162)
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %158, %124
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local %struct.netfront_rxq* @malloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i64 @gnttab_alloc_grant_references(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @SHARED_RING_INIT(i32*) #1

declare dso_local i32 @FRONT_RING_INIT(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @xenbus_grant_ring(i32, i32, i8**) #1

declare dso_local i32 @virt_to_mfn(i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @gnttab_free_grant_references(i32) #1

declare dso_local i32 @free(%struct.netfront_rxq*, i32) #1

declare dso_local i32 @disconnect_rxq(%struct.netfront_rxq*) #1

declare dso_local i32 @destroy_rxq(%struct.netfront_rxq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
