; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_free_slice_rings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_free_slice_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxge_slice_state = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, i32*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__*, i32*, i32, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_10__*, i32*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_6__ = type { i32*, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxge_slice_state*)* @mxge_free_slice_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxge_free_slice_rings(%struct.mxge_slice_state* %0) #0 {
  %2 = alloca %struct.mxge_slice_state*, align 8
  %3 = alloca i32, align 4
  store %struct.mxge_slice_state* %0, %struct.mxge_slice_state** %2, align 8
  %4 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %5 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %11 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = call i32 @mxge_dma_free(i32* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %16 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %19 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %25 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load i32, i32* @M_DEVBUF, align 4
  %29 = call i32 @free(%struct.TYPE_10__* %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %14
  %31 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %32 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %33, align 8
  %34 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %35 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %41 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i32, i32* @M_DEVBUF, align 4
  %45 = call i32 @free(%struct.TYPE_10__* %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %30
  %47 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %48 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %49, align 8
  %50 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %51 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = icmp ne %struct.TYPE_10__* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %57 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = load i32, i32* @M_DEVBUF, align 4
  %61 = call i32 @free(%struct.TYPE_10__* %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %46
  %63 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %64 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %65, align 8
  %66 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %67 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = icmp ne %struct.TYPE_10__* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %73 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = load i32, i32* @M_DEVBUF, align 4
  %77 = call i32 @free(%struct.TYPE_10__* %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %62
  %79 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %80 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %81, align 8
  %82 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %83 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = icmp ne %struct.TYPE_10__* %85, null
  br i1 %86, label %87, label %132

87:                                               ; preds = %78
  %88 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %89 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %125

93:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %116, %93
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %97 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sle i32 %95, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %94
  %102 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %103 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %107 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @bus_dmamap_destroy(i32* %105, i32 %114)
  br label %116

116:                                              ; preds = %101
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %94

119:                                              ; preds = %94
  %120 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %121 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @bus_dma_tag_destroy(i32* %123)
  br label %125

125:                                              ; preds = %119, %87
  %126 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %127 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = load i32, i32* @M_DEVBUF, align 4
  %131 = call i32 @free(%struct.TYPE_10__* %129, i32 %130)
  br label %132

132:                                              ; preds = %125, %78
  %133 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %134 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %135, align 8
  %136 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %137 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = icmp ne %struct.TYPE_10__* %139, null
  br i1 %140, label %141, label %195

141:                                              ; preds = %132
  %142 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %143 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %188

147:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %170, %147
  %149 = load i32, i32* %3, align 4
  %150 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %151 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp sle i32 %149, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %148
  %156 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %157 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %161 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @bus_dmamap_destroy(i32* %159, i32 %168)
  br label %170

170:                                              ; preds = %155
  %171 = load i32, i32* %3, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %3, align 4
  br label %148

173:                                              ; preds = %148
  %174 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %175 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %179 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @bus_dmamap_destroy(i32* %177, i32 %181)
  %183 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %184 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @bus_dma_tag_destroy(i32* %186)
  br label %188

188:                                              ; preds = %173, %141
  %189 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %190 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = load i32, i32* @M_DEVBUF, align 4
  %194 = call i32 @free(%struct.TYPE_10__* %192, i32 %193)
  br label %195

195:                                              ; preds = %188, %132
  %196 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %197 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %198, align 8
  %199 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %200 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = icmp ne %struct.TYPE_10__* %202, null
  br i1 %203, label %204, label %258

204:                                              ; preds = %195
  %205 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %206 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %251

210:                                              ; preds = %204
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %233, %210
  %212 = load i32, i32* %3, align 4
  %213 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %214 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp sle i32 %212, %216
  br i1 %217, label %218, label %236

218:                                              ; preds = %211
  %219 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %220 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %224 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @bus_dmamap_destroy(i32* %222, i32 %231)
  br label %233

233:                                              ; preds = %218
  %234 = load i32, i32* %3, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %3, align 4
  br label %211

236:                                              ; preds = %211
  %237 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %238 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %242 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @bus_dmamap_destroy(i32* %240, i32 %244)
  %246 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %247 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = call i32 @bus_dma_tag_destroy(i32* %249)
  br label %251

251:                                              ; preds = %236, %204
  %252 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %253 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %254, align 8
  %256 = load i32, i32* @M_DEVBUF, align 4
  %257 = call i32 @free(%struct.TYPE_10__* %255, i32 %256)
  br label %258

258:                                              ; preds = %251, %195
  %259 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %260 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %261, align 8
  ret void
}

declare dso_local i32 @mxge_dma_free(i32*) #1

declare dso_local i32 @free(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
