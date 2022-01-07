; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_clone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_clone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_softc = type { i32, %struct.pfsync_bucket*, i32, i32, i32, i32, %struct.ifnet*, i32 }
%struct.pfsync_bucket = type { i32, %struct.TYPE_2__, i32, i32, i32, i32*, i32, %struct.pfsync_softc*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.pfsync_softc* }
%struct.if_clone = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@pfsync_buckets = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@M_PFSYNC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PFSYNCF_OK = common dso_local global i32 0, align 4
@IFT_PFSYNC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@pfsyncname = common dso_local global i8* null, align 8
@pfsyncioctl = common dso_local global i32 0, align 4
@pfsyncoutput = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"pfsync bulk\00", align 1
@DLT_PFSYNC = common dso_local global i32 0, align 4
@PFSYNC_HDRLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"pfsync bucket\00", align 1
@PFSYNC_MINPKT = common dso_local global i32 0, align 4
@PFSYNC_S_COUNT = common dso_local global i32 0, align 4
@ifqmaxlen = common dso_local global i32 0, align 4
@V_pfsyncif = common dso_local global %struct.pfsync_softc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i32, i32)* @pfsync_clone_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfsync_clone_create(%struct.if_clone* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.if_clone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pfsync_softc*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.pfsync_bucket*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.if_clone* %0, %struct.if_clone** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %160

17:                                               ; preds = %3
  %18 = load i32, i32* @pfsync_buckets, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @mp_ncpus, align 4
  %22 = mul nsw i32 %21, 2
  store i32 %22, i32* @pfsync_buckets, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @M_PFSYNC, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.pfsync_softc* @malloc(i32 48, i32 %24, i32 %27)
  store %struct.pfsync_softc* %28, %struct.pfsync_softc** %8, align 8
  %29 = load i32, i32* @PFSYNCF_OK, align 4
  %30 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %31 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %35 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %34, i32 0, i32 0
  store i32 128, i32* %35, align 8
  %36 = load i32, i32* @IFT_PFSYNC, align 4
  %37 = call %struct.ifnet* @if_alloc(i32 %36)
  %38 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %39 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %38, i32 0, i32 6
  store %struct.ifnet* %37, %struct.ifnet** %39, align 8
  store %struct.ifnet* %37, %struct.ifnet** %9, align 8
  %40 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %41 = icmp eq %struct.ifnet* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %23
  %43 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %44 = load i32, i32* @M_PFSYNC, align 4
  %45 = call i32 @free(%struct.pfsync_softc* %43, i32 %44)
  %46 = load i32, i32* @ENOSPC, align 4
  store i32 %46, i32* %4, align 4
  br label %160

47:                                               ; preds = %23
  %48 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %49 = load i8*, i8** @pfsyncname, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @if_initname(%struct.ifnet* %48, i8* %49, i32 %50)
  %52 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %53 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 5
  store %struct.pfsync_softc* %52, %struct.pfsync_softc** %54, align 8
  %55 = load i32, i32* @pfsyncioctl, align 4
  %56 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @pfsyncoutput, align 4
  %59 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @IFT_PFSYNC, align 4
  %62 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 0
  store i32 4, i32* %65, align 8
  %66 = load i32, i32* @ETHERMTU, align 4
  %67 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %70 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %69, i32 0, i32 5
  %71 = load i8*, i8** @pfsyncname, align 8
  %72 = load i32, i32* @MTX_DEF, align 4
  %73 = call i32 @mtx_init(i32* %70, i8* %71, i32* null, i32 %72)
  %74 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %75 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %74, i32 0, i32 2
  %76 = load i32, i32* @MTX_DEF, align 4
  %77 = call i32 @mtx_init(i32* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %76)
  %78 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %79 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %78, i32 0, i32 4
  %80 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %81 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %80, i32 0, i32 2
  %82 = call i32 @callout_init_mtx(i32* %79, i32* %81, i32 0)
  %83 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %84 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %83, i32 0, i32 3
  %85 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %86 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %85, i32 0, i32 2
  %87 = call i32 @callout_init_mtx(i32* %84, i32* %86, i32 0)
  %88 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %89 = call i32 @if_attach(%struct.ifnet* %88)
  %90 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %91 = load i32, i32* @DLT_PFSYNC, align 4
  %92 = load i32, i32* @PFSYNC_HDRLEN, align 4
  %93 = call i32 @bpfattach(%struct.ifnet* %90, i32 %91, i32 %92)
  %94 = load i32, i32* @pfsync_buckets, align 4
  %95 = load i32, i32* @M_PFSYNC, align 4
  %96 = load i32, i32* @M_ZERO, align 4
  %97 = load i32, i32* @M_WAITOK, align 4
  %98 = or i32 %96, %97
  %99 = call %struct.pfsync_bucket* @mallocarray(i32 %94, i32 56, i32 %95, i32 %98)
  %100 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %101 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %100, i32 0, i32 1
  store %struct.pfsync_bucket* %99, %struct.pfsync_bucket** %101, align 8
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %155, %47
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @pfsync_buckets, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %158

106:                                              ; preds = %102
  %107 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %108 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %107, i32 0, i32 1
  %109 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %109, i64 %111
  store %struct.pfsync_bucket* %112, %struct.pfsync_bucket** %10, align 8
  %113 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %10, align 8
  %114 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %113, i32 0, i32 8
  %115 = load i32, i32* @MTX_DEF, align 4
  %116 = call i32 @mtx_init(i32* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %115)
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %10, align 8
  %119 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  %121 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %10, align 8
  %122 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %121, i32 0, i32 7
  store %struct.pfsync_softc* %120, %struct.pfsync_softc** %122, align 8
  %123 = load i32, i32* @PFSYNC_MINPKT, align 4
  %124 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %10, align 8
  %125 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 8
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %138, %106
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @PFSYNC_S_COUNT, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %126
  %131 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %10, align 8
  %132 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = call i32 @TAILQ_INIT(i32* %136)
  br label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %126

141:                                              ; preds = %126
  %142 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %10, align 8
  %143 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %142, i32 0, i32 4
  %144 = call i32 @TAILQ_INIT(i32* %143)
  %145 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %10, align 8
  %146 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %145, i32 0, i32 3
  %147 = call i32 @TAILQ_INIT(i32* %146)
  %148 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %10, align 8
  %149 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %148, i32 0, i32 2
  %150 = call i32 @callout_init(i32* %149, i32 1)
  %151 = load i32, i32* @ifqmaxlen, align 4
  %152 = load %struct.pfsync_bucket*, %struct.pfsync_bucket** %10, align 8
  %153 = getelementptr inbounds %struct.pfsync_bucket, %struct.pfsync_bucket* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 4
  br label %155

155:                                              ; preds = %141
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %102

158:                                              ; preds = %102
  %159 = load %struct.pfsync_softc*, %struct.pfsync_softc** %8, align 8
  store %struct.pfsync_softc* %159, %struct.pfsync_softc** @V_pfsyncif, align 8
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %158, %42, %15
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local %struct.pfsync_softc* @malloc(i32, i32, i32) #1

declare dso_local %struct.ifnet* @if_alloc(i32) #1

declare dso_local i32 @free(%struct.pfsync_softc*, i32) #1

declare dso_local i32 @if_initname(%struct.ifnet*, i8*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @if_attach(%struct.ifnet*) #1

declare dso_local i32 @bpfattach(%struct.ifnet*, i32, i32) #1

declare dso_local %struct.pfsync_bucket* @mallocarray(i32, i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
