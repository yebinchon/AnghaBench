; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_lb.c_pf_map_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_lb.c_pf_map_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.pf_rule = type { %struct.pf_pool }
%struct.pf_pool = type { i32, i32, %struct.pf_addr, %struct.pf_pooladdr*, i32, i32 }
%struct.pf_addr = type { i32* }
%struct.pf_pooladdr = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.pf_addr, %struct.pf_addr }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.pf_addr, %struct.pf_addr, %struct.pf_addr, %struct.pf_addr }
%struct.pf_src_node = type { %struct.pf_addr }

@PF_POOL_STICKYADDR = common dso_local global i32 0, align 4
@PF_POOL_TYPEMASK = common dso_local global i32 0, align 4
@V_pf_status = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PF_DEBUG_MISC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"pf_map_addr: src tracking maps \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PF_ADDR_NOROUTE = common dso_local global i64 0, align 8
@PF_ADDR_DYNIFTL = common dso_local global i64 0, align 8
@PF_ADDR_TABLE = common dso_local global i64 0, align 8
@entries = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"pf_map_addr: selected address \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_map_addr(i32 %0, %struct.pf_rule* %1, %struct.pf_addr* %2, %struct.pf_addr* %3, %struct.pf_addr* %4, %struct.pf_src_node** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pf_rule*, align 8
  %10 = alloca %struct.pf_addr*, align 8
  %11 = alloca %struct.pf_addr*, align 8
  %12 = alloca %struct.pf_addr*, align 8
  %13 = alloca %struct.pf_src_node**, align 8
  %14 = alloca %struct.pf_pool*, align 8
  %15 = alloca %struct.pf_addr*, align 8
  %16 = alloca %struct.pf_addr*, align 8
  %17 = alloca [16 x i8], align 16
  %18 = alloca %struct.pf_pooladdr*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.pf_rule* %1, %struct.pf_rule** %9, align 8
  store %struct.pf_addr* %2, %struct.pf_addr** %10, align 8
  store %struct.pf_addr* %3, %struct.pf_addr** %11, align 8
  store %struct.pf_addr* %4, %struct.pf_addr** %12, align 8
  store %struct.pf_src_node** %5, %struct.pf_src_node*** %13, align 8
  %19 = load %struct.pf_rule*, %struct.pf_rule** %9, align 8
  %20 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %19, i32 0, i32 0
  store %struct.pf_pool* %20, %struct.pf_pool** %14, align 8
  store %struct.pf_addr* null, %struct.pf_addr** %15, align 8
  store %struct.pf_addr* null, %struct.pf_addr** %16, align 8
  %21 = load %struct.pf_src_node**, %struct.pf_src_node*** %13, align 8
  %22 = load %struct.pf_src_node*, %struct.pf_src_node** %21, align 8
  %23 = icmp eq %struct.pf_src_node* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %6
  %25 = load %struct.pf_rule*, %struct.pf_rule** %9, align 8
  %26 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PF_POOL_STICKYADDR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %24
  %33 = load %struct.pf_rule*, %struct.pf_rule** %9, align 8
  %34 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PF_POOL_TYPEMASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 131
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %42 = load %struct.pf_rule*, %struct.pf_rule** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.pf_src_node* @pf_find_src_node(%struct.pf_addr* %41, %struct.pf_rule* %42, i32 %43, i32 0)
  %45 = load %struct.pf_src_node**, %struct.pf_src_node*** %13, align 8
  store %struct.pf_src_node* %44, %struct.pf_src_node** %45, align 8
  br label %46

46:                                               ; preds = %40, %32, %24, %6
  %47 = load %struct.pf_src_node**, %struct.pf_src_node*** %13, align 8
  %48 = load %struct.pf_src_node*, %struct.pf_src_node** %47, align 8
  %49 = icmp ne %struct.pf_src_node* %48, null
  br i1 %49, label %50, label %87

50:                                               ; preds = %46
  %51 = load %struct.pf_src_node**, %struct.pf_src_node*** %13, align 8
  %52 = load %struct.pf_src_node*, %struct.pf_src_node** %51, align 8
  %53 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %52, i32 0, i32 0
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @PF_AZERO(%struct.pf_addr* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %87, label %57

57:                                               ; preds = %50
  %58 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %59 = load %struct.pf_src_node**, %struct.pf_src_node*** %13, align 8
  %60 = load %struct.pf_src_node*, %struct.pf_src_node** %59, align 8
  %61 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %60, i32 0, i32 0
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @PF_AEQ(%struct.pf_addr* %58, %struct.pf_addr* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 1, i32* %7, align 4
  br label %445

66:                                               ; preds = %57
  %67 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %68 = load %struct.pf_src_node**, %struct.pf_src_node*** %13, align 8
  %69 = load %struct.pf_src_node*, %struct.pf_src_node** %68, align 8
  %70 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %69, i32 0, i32 0
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @PF_ACPY(%struct.pf_addr* %67, %struct.pf_addr* %70, i32 %71)
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @V_pf_status, i32 0, i32 0), align 8
  %74 = load i64, i64* @PF_DEBUG_MISC, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %66
  %77 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @pf_print_host(%struct.pf_addr* %78, i32 0, i32 %79)
  %81 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @pf_print_host(%struct.pf_addr* %82, i32 0, i32 %83)
  %85 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %76, %66
  store i32 0, i32* %7, align 4
  br label %445

87:                                               ; preds = %50, %46
  %88 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %89 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %88, i32 0, i32 3
  %90 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %89, align 8
  %91 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PF_ADDR_NOROUTE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i32 1, i32* %7, align 4
  br label %445

97:                                               ; preds = %87
  %98 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %99 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %98, i32 0, i32 3
  %100 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %99, align 8
  %101 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PF_ADDR_DYNIFTL, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i32, i32* %8, align 4
  switch i32 %107, label %108 [
  ]

108:                                              ; preds = %106
  br label %143

109:                                              ; preds = %97
  %110 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %111 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %110, i32 0, i32 3
  %112 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %111, align 8
  %113 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @PF_ADDR_TABLE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %109
  %119 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %120 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @PF_POOL_TYPEMASK, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 129
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i32 1, i32* %7, align 4
  br label %445

126:                                              ; preds = %118
  br label %142

127:                                              ; preds = %109
  %128 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %129 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %128, i32 0, i32 3
  %130 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %129, align 8
  %131 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store %struct.pf_addr* %134, %struct.pf_addr** %15, align 8
  %135 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %136 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %135, i32 0, i32 3
  %137 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %136, align 8
  %138 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store %struct.pf_addr* %141, %struct.pf_addr** %16, align 8
  br label %142

142:                                              ; preds = %127, %126
  br label %143

143:                                              ; preds = %142, %108
  %144 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %145 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @PF_POOL_TYPEMASK, align 4
  %148 = and i32 %146, %147
  switch i32 %148, label %416 [
    i32 131, label %149
    i32 132, label %154
    i32 130, label %161
    i32 128, label %196
    i32 129, label %209
  ]

149:                                              ; preds = %143
  %150 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %151 = load %struct.pf_addr*, %struct.pf_addr** %15, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @PF_ACPY(%struct.pf_addr* %150, %struct.pf_addr* %151, i32 %152)
  br label %416

154:                                              ; preds = %143
  %155 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %156 = load %struct.pf_addr*, %struct.pf_addr** %15, align 8
  %157 = load %struct.pf_addr*, %struct.pf_addr** %16, align 8
  %158 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @PF_POOLMASK(%struct.pf_addr* %155, %struct.pf_addr* %156, %struct.pf_addr* %157, %struct.pf_addr* %158, i32 %159)
  br label %416

161:                                              ; preds = %143
  %162 = load %struct.pf_addr*, %struct.pf_addr** %12, align 8
  %163 = icmp ne %struct.pf_addr* %162, null
  br i1 %163, label %164, label %183

164:                                              ; preds = %161
  %165 = load %struct.pf_addr*, %struct.pf_addr** %12, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i64 @PF_AZERO(%struct.pf_addr* %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %164
  %170 = load i32, i32* %8, align 4
  switch i32 %170, label %171 [
  ]

171:                                              ; preds = %169
  %172 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %173 = load %struct.pf_addr*, %struct.pf_addr** %15, align 8
  %174 = load %struct.pf_addr*, %struct.pf_addr** %16, align 8
  %175 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %176 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %175, i32 0, i32 2
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @PF_POOLMASK(%struct.pf_addr* %172, %struct.pf_addr* %173, %struct.pf_addr* %174, %struct.pf_addr* %176, i32 %177)
  %179 = load %struct.pf_addr*, %struct.pf_addr** %12, align 8
  %180 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @PF_ACPY(%struct.pf_addr* %179, %struct.pf_addr* %180, i32 %181)
  br label %195

183:                                              ; preds = %164, %161
  %184 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %185 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %184, i32 0, i32 2
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @PF_AINC(%struct.pf_addr* %185, i32 %186)
  %188 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %189 = load %struct.pf_addr*, %struct.pf_addr** %15, align 8
  %190 = load %struct.pf_addr*, %struct.pf_addr** %16, align 8
  %191 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %192 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %191, i32 0, i32 2
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @PF_POOLMASK(%struct.pf_addr* %188, %struct.pf_addr* %189, %struct.pf_addr* %190, %struct.pf_addr* %192, i32 %193)
  br label %195

195:                                              ; preds = %183, %171
  br label %416

196:                                              ; preds = %143
  %197 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %198 = bitcast [16 x i8]* %17 to %struct.pf_addr*
  %199 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %200 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %199, i32 0, i32 5
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @pf_hash(%struct.pf_addr* %197, %struct.pf_addr* %198, i32* %200, i32 %201)
  %203 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %204 = load %struct.pf_addr*, %struct.pf_addr** %15, align 8
  %205 = load %struct.pf_addr*, %struct.pf_addr** %16, align 8
  %206 = bitcast [16 x i8]* %17 to %struct.pf_addr*
  %207 = load i32, i32* %8, align 4
  %208 = call i32 @PF_POOLMASK(%struct.pf_addr* %203, %struct.pf_addr* %204, %struct.pf_addr* %205, %struct.pf_addr* %206, i32 %207)
  br label %416

209:                                              ; preds = %143
  %210 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %211 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %210, i32 0, i32 3
  %212 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %211, align 8
  store %struct.pf_pooladdr* %212, %struct.pf_pooladdr** %18, align 8
  %213 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %214 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %213, i32 0, i32 3
  %215 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %214, align 8
  %216 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @PF_ADDR_TABLE, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %238

221:                                              ; preds = %209
  %222 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %223 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %222, i32 0, i32 3
  %224 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %223, align 8
  %225 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %230 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %229, i32 0, i32 1
  %231 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %232 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %231, i32 0, i32 2
  %233 = load i32, i32* %8, align 4
  %234 = call i32 @pfr_pool_get(i32 %228, i32* %230, %struct.pf_addr* %232, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %221
  br label %393

237:                                              ; preds = %221
  br label %277

238:                                              ; preds = %209
  %239 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %240 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %239, i32 0, i32 3
  %241 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %240, align 8
  %242 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @PF_ADDR_DYNIFTL, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %266

247:                                              ; preds = %238
  %248 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %249 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %248, i32 0, i32 3
  %250 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %249, align 8
  %251 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %258 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %257, i32 0, i32 1
  %259 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %260 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %259, i32 0, i32 2
  %261 = load i32, i32* %8, align 4
  %262 = call i32 @pfr_pool_get(i32 %256, i32* %258, %struct.pf_addr* %260, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %247
  br label %393

265:                                              ; preds = %247
  br label %276

266:                                              ; preds = %238
  %267 = load %struct.pf_addr*, %struct.pf_addr** %15, align 8
  %268 = load %struct.pf_addr*, %struct.pf_addr** %16, align 8
  %269 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %270 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %269, i32 0, i32 2
  %271 = load i32, i32* %8, align 4
  %272 = call i32 @pf_match_addr(i32 0, %struct.pf_addr* %267, %struct.pf_addr* %268, %struct.pf_addr* %270, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %266
  br label %393

275:                                              ; preds = %266
  br label %276

276:                                              ; preds = %275, %265
  br label %277

277:                                              ; preds = %276, %237
  br label %278

278:                                              ; preds = %368, %331, %277
  %279 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %280 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %279, i32 0, i32 3
  %281 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %280, align 8
  %282 = load i32, i32* @entries, align 4
  %283 = call %struct.pf_pooladdr* @TAILQ_NEXT(%struct.pf_pooladdr* %281, i32 %282)
  %284 = icmp eq %struct.pf_pooladdr* %283, null
  br i1 %284, label %285, label %291

285:                                              ; preds = %278
  %286 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %287 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %286, i32 0, i32 4
  %288 = call %struct.pf_pooladdr* @TAILQ_FIRST(i32* %287)
  %289 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %290 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %289, i32 0, i32 3
  store %struct.pf_pooladdr* %288, %struct.pf_pooladdr** %290, align 8
  br label %299

291:                                              ; preds = %278
  %292 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %293 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %292, i32 0, i32 3
  %294 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %293, align 8
  %295 = load i32, i32* @entries, align 4
  %296 = call %struct.pf_pooladdr* @TAILQ_NEXT(%struct.pf_pooladdr* %294, i32 %295)
  %297 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %298 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %297, i32 0, i32 3
  store %struct.pf_pooladdr* %296, %struct.pf_pooladdr** %298, align 8
  br label %299

299:                                              ; preds = %291, %285
  %300 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %301 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %300, i32 0, i32 3
  %302 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %301, align 8
  %303 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @PF_ADDR_TABLE, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %334

308:                                              ; preds = %299
  %309 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %310 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %309, i32 0, i32 1
  store i32 -1, i32* %310, align 4
  %311 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %312 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %311, i32 0, i32 3
  %313 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %312, align 8
  %314 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %319 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %318, i32 0, i32 1
  %320 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %321 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %320, i32 0, i32 2
  %322 = load i32, i32* %8, align 4
  %323 = call i32 @pfr_pool_get(i32 %317, i32* %319, %struct.pf_addr* %321, i32 %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %308
  %326 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %327 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %326, i32 0, i32 3
  %328 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %327, align 8
  %329 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %18, align 8
  %330 = icmp ne %struct.pf_pooladdr* %328, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %325
  br label %278

332:                                              ; preds = %325
  store i32 1, i32* %7, align 4
  br label %445

333:                                              ; preds = %308
  br label %392

334:                                              ; preds = %299
  %335 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %336 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %335, i32 0, i32 3
  %337 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %336, align 8
  %338 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @PF_ADDR_DYNIFTL, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %371

343:                                              ; preds = %334
  %344 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %345 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %344, i32 0, i32 1
  store i32 -1, i32* %345, align 4
  %346 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %347 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %346, i32 0, i32 3
  %348 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %347, align 8
  %349 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %356 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %355, i32 0, i32 1
  %357 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %358 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %357, i32 0, i32 2
  %359 = load i32, i32* %8, align 4
  %360 = call i32 @pfr_pool_get(i32 %354, i32* %356, %struct.pf_addr* %358, i32 %359)
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %370

362:                                              ; preds = %343
  %363 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %364 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %363, i32 0, i32 3
  %365 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %364, align 8
  %366 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %18, align 8
  %367 = icmp ne %struct.pf_pooladdr* %365, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %362
  br label %278

369:                                              ; preds = %362
  store i32 1, i32* %7, align 4
  br label %445

370:                                              ; preds = %343
  br label %391

371:                                              ; preds = %334
  %372 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %373 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %372, i32 0, i32 3
  %374 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %373, align 8
  %375 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 1
  store %struct.pf_addr* %378, %struct.pf_addr** %15, align 8
  %379 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %380 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %379, i32 0, i32 3
  %381 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %380, align 8
  %382 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 0
  store %struct.pf_addr* %385, %struct.pf_addr** %16, align 8
  %386 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %387 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %386, i32 0, i32 2
  %388 = load %struct.pf_addr*, %struct.pf_addr** %15, align 8
  %389 = load i32, i32* %8, align 4
  %390 = call i32 @PF_ACPY(%struct.pf_addr* %387, %struct.pf_addr* %388, i32 %389)
  br label %391

391:                                              ; preds = %371, %370
  br label %392

392:                                              ; preds = %391, %333
  br label %393

393:                                              ; preds = %392, %274, %264, %236
  %394 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %395 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %396 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %395, i32 0, i32 2
  %397 = load i32, i32* %8, align 4
  %398 = call i32 @PF_ACPY(%struct.pf_addr* %394, %struct.pf_addr* %396, i32 %397)
  %399 = load %struct.pf_addr*, %struct.pf_addr** %12, align 8
  %400 = icmp ne %struct.pf_addr* %399, null
  br i1 %400, label %401, label %411

401:                                              ; preds = %393
  %402 = load %struct.pf_addr*, %struct.pf_addr** %12, align 8
  %403 = load i32, i32* %8, align 4
  %404 = call i64 @PF_AZERO(%struct.pf_addr* %402, i32 %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %411

406:                                              ; preds = %401
  %407 = load %struct.pf_addr*, %struct.pf_addr** %12, align 8
  %408 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %409 = load i32, i32* %8, align 4
  %410 = call i32 @PF_ACPY(%struct.pf_addr* %407, %struct.pf_addr* %408, i32 %409)
  br label %411

411:                                              ; preds = %406, %401, %393
  %412 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %413 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %412, i32 0, i32 2
  %414 = load i32, i32* %8, align 4
  %415 = call i32 @PF_AINC(%struct.pf_addr* %413, i32 %414)
  br label %416

416:                                              ; preds = %143, %411, %196, %195, %154, %149
  %417 = load %struct.pf_src_node**, %struct.pf_src_node*** %13, align 8
  %418 = load %struct.pf_src_node*, %struct.pf_src_node** %417, align 8
  %419 = icmp ne %struct.pf_src_node* %418, null
  br i1 %419, label %420, label %427

420:                                              ; preds = %416
  %421 = load %struct.pf_src_node**, %struct.pf_src_node*** %13, align 8
  %422 = load %struct.pf_src_node*, %struct.pf_src_node** %421, align 8
  %423 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %422, i32 0, i32 0
  %424 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %425 = load i32, i32* %8, align 4
  %426 = call i32 @PF_ACPY(%struct.pf_addr* %423, %struct.pf_addr* %424, i32 %425)
  br label %427

427:                                              ; preds = %420, %416
  %428 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @V_pf_status, i32 0, i32 0), align 8
  %429 = load i64, i64* @PF_DEBUG_MISC, align 8
  %430 = icmp sge i64 %428, %429
  br i1 %430, label %431, label %444

431:                                              ; preds = %427
  %432 = load %struct.pf_pool*, %struct.pf_pool** %14, align 8
  %433 = getelementptr inbounds %struct.pf_pool, %struct.pf_pool* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = load i32, i32* @PF_POOL_TYPEMASK, align 4
  %436 = and i32 %434, %435
  %437 = icmp ne i32 %436, 131
  br i1 %437, label %438, label %444

438:                                              ; preds = %431
  %439 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %440 = load %struct.pf_addr*, %struct.pf_addr** %11, align 8
  %441 = load i32, i32* %8, align 4
  %442 = call i32 @pf_print_host(%struct.pf_addr* %440, i32 0, i32 %441)
  %443 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %444

444:                                              ; preds = %438, %431, %427
  store i32 0, i32* %7, align 4
  br label %445

445:                                              ; preds = %444, %369, %332, %125, %96, %86, %65
  %446 = load i32, i32* %7, align 4
  ret i32 %446
}

declare dso_local %struct.pf_src_node* @pf_find_src_node(%struct.pf_addr*, %struct.pf_rule*, i32, i32) #1

declare dso_local i64 @PF_AZERO(%struct.pf_addr*, i32) #1

declare dso_local i64 @PF_AEQ(%struct.pf_addr*, %struct.pf_addr*, i32) #1

declare dso_local i32 @PF_ACPY(%struct.pf_addr*, %struct.pf_addr*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @pf_print_host(%struct.pf_addr*, i32, i32) #1

declare dso_local i32 @PF_POOLMASK(%struct.pf_addr*, %struct.pf_addr*, %struct.pf_addr*, %struct.pf_addr*, i32) #1

declare dso_local i32 @PF_AINC(%struct.pf_addr*, i32) #1

declare dso_local i32 @pf_hash(%struct.pf_addr*, %struct.pf_addr*, i32*, i32) #1

declare dso_local i32 @pfr_pool_get(i32, i32*, %struct.pf_addr*, i32) #1

declare dso_local i32 @pf_match_addr(i32, %struct.pf_addr*, %struct.pf_addr*, %struct.pf_addr*, i32) #1

declare dso_local %struct.pf_pooladdr* @TAILQ_NEXT(%struct.pf_pooladdr*, i32) #1

declare dso_local %struct.pf_pooladdr* @TAILQ_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
