; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pfsync_state_export.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pfsync_state_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_state = type { i64, i32*, i32*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32*, i32* }
%struct.pf_state = type { i64, i32*, i32*, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_17__** }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32*, i32* }

@PF_SK_WIRE = common dso_local global i64 0, align 8
@PF_SK_STACK = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@PFSYNC_FLAG_SRCNODE = common dso_local global i32 0, align 4
@PFSYNC_FLAG_NATSRCNODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfsync_state_export(%struct.pfsync_state* %0, %struct.pf_state* %1) #0 {
  %3 = alloca %struct.pfsync_state*, align 8
  %4 = alloca %struct.pf_state*, align 8
  store %struct.pfsync_state* %0, %struct.pfsync_state** %3, align 8
  store %struct.pf_state* %1, %struct.pf_state** %4, align 8
  %5 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %6 = call i32 @bzero(%struct.pfsync_state* %5, i32 120)
  %7 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %8 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %7, i32 0, i32 18
  %9 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %10 = load i64, i64* @PF_SK_WIRE, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %9, i64 %10
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %18 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %17, i32 0, i32 20
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = load i64, i64* @PF_SK_WIRE, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %16, i32* %24, align 4
  %25 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %26 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %25, i32 0, i32 18
  %27 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %26, align 8
  %28 = load i64, i64* @PF_SK_WIRE, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %27, i64 %28
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %36 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %35, i32 0, i32 20
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = load i64, i64* @PF_SK_WIRE, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %34, i32* %42, align 4
  %43 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %44 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %43, i32 0, i32 18
  %45 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %44, align 8
  %46 = load i64, i64* @PF_SK_WIRE, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %45, i64 %46
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %54 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %53, i32 0, i32 20
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = load i64, i64* @PF_SK_WIRE, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %52, i32* %60, align 4
  %61 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %62 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %61, i32 0, i32 18
  %63 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %62, align 8
  %64 = load i64, i64* @PF_SK_WIRE, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %63, i64 %64
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %72 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %71, i32 0, i32 20
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = load i64, i64* @PF_SK_WIRE, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 %70, i32* %78, align 4
  %79 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %80 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %79, i32 0, i32 18
  %81 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %80, align 8
  %82 = load i64, i64* @PF_SK_STACK, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %81, i64 %82
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %90 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %89, i32 0, i32 20
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = load i64, i64* @PF_SK_STACK, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %88, i32* %96, align 4
  %97 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %98 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %97, i32 0, i32 18
  %99 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %98, align 8
  %100 = load i64, i64* @PF_SK_STACK, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %99, i64 %100
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %108 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %107, i32 0, i32 20
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = load i64, i64* @PF_SK_STACK, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %106, i32* %114, align 4
  %115 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %116 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %115, i32 0, i32 18
  %117 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %116, align 8
  %118 = load i64, i64* @PF_SK_STACK, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %117, i64 %118
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %126 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %125, i32 0, i32 20
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = load i64, i64* @PF_SK_STACK, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %124, i32* %132, align 4
  %133 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %134 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %133, i32 0, i32 18
  %135 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %134, align 8
  %136 = load i64, i64* @PF_SK_STACK, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %135, i64 %136
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %144 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %143, i32 0, i32 20
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = load i64, i64* @PF_SK_STACK, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  store i32 %142, i32* %150, align 4
  %151 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %152 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %151, i32 0, i32 18
  %153 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %152, align 8
  %154 = load i64, i64* @PF_SK_WIRE, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %153, i64 %154
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %160 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %159, i32 0, i32 19
  store i32 %158, i32* %160, align 4
  %161 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %162 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %161, i32 0, i32 18
  %163 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %162, align 8
  %164 = load i64, i64* @PF_SK_WIRE, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %163, i64 %164
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %170 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %169, i32 0, i32 18
  store i32 %168, i32* %170, align 8
  %171 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %172 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %171, i32 0, i32 17
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %175 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %174, i32 0, i32 17
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @strlcpy(i32 %173, i32 %178, i32 4)
  %180 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %181 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %180, i32 0, i32 16
  %182 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %183 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %182, i32 0, i32 16
  %184 = call i32 @bcopy(i32* %181, i32* %183, i32 4)
  %185 = load i64, i64* @time_uptime, align 8
  %186 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %187 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %185, %188
  %190 = trunc i64 %189 to i32
  %191 = call i8* @htonl(i32 %190)
  %192 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %193 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %192, i32 0, i32 15
  store i8* %191, i8** %193, align 8
  %194 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %195 = call i64 @pf_state_expires(%struct.pf_state* %194)
  %196 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %197 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  %198 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %199 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @time_uptime, align 8
  %202 = icmp sle i64 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %2
  %204 = call i8* @htonl(i32 0)
  %205 = ptrtoint i8* %204 to i64
  %206 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %207 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %206, i32 0, i32 0
  store i64 %205, i64* %207, align 8
  br label %219

208:                                              ; preds = %2
  %209 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %210 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @time_uptime, align 8
  %213 = sub nsw i64 %211, %212
  %214 = trunc i64 %213 to i32
  %215 = call i8* @htonl(i32 %214)
  %216 = ptrtoint i8* %215 to i64
  %217 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %218 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %217, i32 0, i32 0
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %208, %203
  %220 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %221 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %220, i32 0, i32 15
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %224 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %223, i32 0, i32 14
  store i32 %222, i32* %224, align 8
  %225 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %226 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %225, i32 0, i32 14
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %229 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %228, i32 0, i32 13
  store i32 %227, i32* %229, align 4
  %230 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %231 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %230, i32 0, i32 13
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %234 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %233, i32 0, i32 12
  store i32 %232, i32* %234, align 8
  %235 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %236 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %235, i32 0, i32 12
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %239 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %238, i32 0, i32 11
  store i32 %237, i32* %239, align 4
  %240 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %241 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %240, i32 0, i32 11
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %219
  %245 = load i32, i32* @PFSYNC_FLAG_SRCNODE, align 4
  %246 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %247 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %246, i32 0, i32 10
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %244, %219
  %251 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %252 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %251, i32 0, i32 10
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %250
  %256 = load i32, i32* @PFSYNC_FLAG_NATSRCNODE, align 4
  %257 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %258 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %257, i32 0, i32 10
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 8
  br label %261

261:                                              ; preds = %255, %250
  %262 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %263 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %262, i32 0, i32 9
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %266 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %265, i32 0, i32 9
  store i32 %264, i32* %266, align 4
  %267 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %268 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %267, i32 0, i32 8
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %271 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %270, i32 0, i32 8
  store i32 %269, i32* %271, align 8
  %272 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %273 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %272, i32 0, i32 7
  %274 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %275 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %274, i32 0, i32 7
  %276 = call i32 @pf_state_peer_hton(i32* %273, i32* %275)
  %277 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %278 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %277, i32 0, i32 6
  %279 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %280 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %279, i32 0, i32 6
  %281 = call i32 @pf_state_peer_hton(i32* %278, i32* %280)
  %282 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %283 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %282, i32 0, i32 5
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %284, align 8
  %286 = icmp eq %struct.TYPE_10__* %285, null
  br i1 %286, label %287, label %291

287:                                              ; preds = %261
  %288 = call i8* @htonl(i32 -1)
  %289 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %290 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %289, i32 0, i32 5
  store i8* %288, i8** %290, align 8
  br label %301

291:                                              ; preds = %261
  %292 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %293 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %292, i32 0, i32 5
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i8* @htonl(i32 %297)
  %299 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %300 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %299, i32 0, i32 5
  store i8* %298, i8** %300, align 8
  br label %301

301:                                              ; preds = %291, %287
  %302 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %303 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %302, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %304, align 8
  %306 = icmp eq %struct.TYPE_12__* %305, null
  br i1 %306, label %307, label %311

307:                                              ; preds = %301
  %308 = call i8* @htonl(i32 -1)
  %309 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %310 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %309, i32 0, i32 4
  store i8* %308, i8** %310, align 8
  br label %321

311:                                              ; preds = %301
  %312 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %313 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %312, i32 0, i32 4
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = call i8* @htonl(i32 %317)
  %319 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %320 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %319, i32 0, i32 4
  store i8* %318, i8** %320, align 8
  br label %321

321:                                              ; preds = %311, %307
  %322 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %323 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %324, align 8
  %326 = icmp eq %struct.TYPE_14__* %325, null
  br i1 %326, label %327, label %331

327:                                              ; preds = %321
  %328 = call i8* @htonl(i32 -1)
  %329 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %330 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %329, i32 0, i32 3
  store i8* %328, i8** %330, align 8
  br label %341

331:                                              ; preds = %321
  %332 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %333 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = call i8* @htonl(i32 %337)
  %339 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %340 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %339, i32 0, i32 3
  store i8* %338, i8** %340, align 8
  br label %341

341:                                              ; preds = %331, %327
  %342 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %343 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %342, i32 0, i32 2
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 0
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %348 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %347, i32 0, i32 2
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 0
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @pf_state_counter_hton(i32 %346, i32 %351)
  %353 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %354 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %353, i32 0, i32 2
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 1
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %359 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %358, i32 0, i32 2
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 1
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @pf_state_counter_hton(i32 %357, i32 %362)
  %364 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %365 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %364, i32 0, i32 1
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 0
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %370 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %369, i32 0, i32 1
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 0
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @pf_state_counter_hton(i32 %368, i32 %373)
  %375 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %376 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 1
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.pfsync_state*, %struct.pfsync_state** %3, align 8
  %381 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %380, i32 0, i32 1
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 1
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @pf_state_counter_hton(i32 %379, i32 %384)
  ret void
}

declare dso_local i32 @bzero(%struct.pfsync_state*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @pf_state_expires(%struct.pf_state*) #1

declare dso_local i32 @pf_state_peer_hton(i32*, i32*) #1

declare dso_local i32 @pf_state_counter_hton(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
