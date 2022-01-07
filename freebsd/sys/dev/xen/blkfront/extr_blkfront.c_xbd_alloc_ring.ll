; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbd_softc = type { i64, i32, i32, i32*, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@M_XENBLOCKFRONT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"allocating shared ring\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"granting ring_ref(%d)\00", align 1
@XST_NIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ring-ref\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"writing %s/ring-ref\00", align 1
@__const.xbd_alloc_ring.ring_ref_name = private unnamed_addr constant [11 x i8] c"ring_refXX\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ring-ref%u\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"writing %s/%s\00", align 1
@xbd_int = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"xen_intr_alloc_and_bind_local_port failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xbd_softc*)* @xbd_alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xbd_alloc_ring(%struct.xbd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xbd_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [11 x i8], align 1
  store %struct.xbd_softc* %0, %struct.xbd_softc** %3, align 8
  %9 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %10 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PAGE_SIZE, align 8
  %13 = mul i64 %11, %12
  %14 = load i32, i32* @M_XENBLOCKFRONT, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call i32* @malloc(i64 %13, i32 %14, i32 %17)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %23 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = call i32 (i32, i32, i8*, ...) @xenbus_dev_fatal(i32 %24, i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %2, align 4
  br label %184

28:                                               ; preds = %1
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @SHARED_RING_INIT(i32* %29)
  %31 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %32 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %31, i32 0, i32 4
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %35 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = mul i64 %36, %37
  %39 = call i32 @FRONT_RING_INIT(i32* %32, i32* %33, i64 %38)
  store i32 0, i32* %7, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = ptrtoint i32* %40 to i64
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %75, %28
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %46 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %42
  %50 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %51 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @vtophys(i64 %53)
  %55 = load i32, i32* @PAGE_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %58 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @xenbus_grant_ring(i32 %52, i32 %56, i32* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %49
  %67 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %68 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (i32, i32, i8*, ...) @xenbus_dev_fatal(i32 %69, i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %184

74:                                               ; preds = %49
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = load i64, i64* @PAGE_SIZE, align 8
  %79 = load i64, i64* %5, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %5, align 8
  br label %42

81:                                               ; preds = %42
  %82 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %83 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 1
  br i1 %85, label %86, label %112

86:                                               ; preds = %81
  %87 = load i32, i32* @XST_NIL, align 4
  %88 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %89 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @xenbus_get_node(i32 %90)
  %92 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %93 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @xs_printf(i32 %87, i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %86
  %101 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %102 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %106 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @xenbus_get_node(i32 %107)
  %109 = call i32 (i32, i32, i8*, ...) @xenbus_dev_fatal(i32 %103, i32 %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %184

111:                                              ; preds = %86
  br label %158

112:                                              ; preds = %81
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %154, %112
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %117 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ult i64 %115, %118
  br i1 %119, label %120, label %157

120:                                              ; preds = %113
  %121 = bitcast [11 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %121, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.xbd_alloc_ring.ring_ref_name, i32 0, i32 0), i64 11, i1 false)
  %122 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 0
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @snprintf(i8* %122, i32 11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @XST_NIL, align 4
  %126 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %127 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @xenbus_get_node(i32 %128)
  %130 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 0
  %131 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %132 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @xs_printf(i32 %125, i32 %129, i8* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %120
  %142 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %143 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %147 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @xenbus_get_node(i32 %148)
  %150 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 0
  %151 = call i32 (i32, i32, i8*, ...) @xenbus_dev_fatal(i32 %144, i32 %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %149, i8* %150)
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %2, align 4
  br label %184

153:                                              ; preds = %120
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %113

157:                                              ; preds = %113
  br label %158

158:                                              ; preds = %157, %111
  %159 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %160 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %163 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @xenbus_get_otherend_id(i32 %164)
  %166 = load i32, i32* @xbd_int, align 4
  %167 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %168 = load i32, i32* @INTR_TYPE_BIO, align 4
  %169 = load i32, i32* @INTR_MPSAFE, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %172 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %171, i32 0, i32 2
  %173 = call i32 @xen_intr_alloc_and_bind_local_port(i32 %161, i32 %165, i32* null, i32 %166, %struct.xbd_softc* %167, i32 %170, i32* %172)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %158
  %177 = load %struct.xbd_softc*, %struct.xbd_softc** %3, align 8
  %178 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i32 (i32, i32, i8*, ...) @xenbus_dev_fatal(i32 %179, i32 %180, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %182 = load i32, i32* %6, align 4
  store i32 %182, i32* %2, align 4
  br label %184

183:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %183, %176, %141, %100, %66, %21
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*, ...) #1

declare dso_local i32 @SHARED_RING_INIT(i32*) #1

declare dso_local i32 @FRONT_RING_INIT(i32*, i32*, i64) #1

declare dso_local i32 @xenbus_grant_ring(i32, i32, i32*) #1

declare dso_local i32 @vtophys(i64) #1

declare dso_local i32 @xs_printf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @xenbus_get_node(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @xen_intr_alloc_and_bind_local_port(i32, i32, i32*, i32, %struct.xbd_softc*, i32, i32*) #1

declare dso_local i32 @xenbus_get_otherend_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
