; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c__pmcpl_ct_expand_inline.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c__pmcpl_ct_expand_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.pmcpl_ct_node = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_9__ = type { i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@args = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [42 x i8] c"WARNING: inlined function at %p %s in %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@pmcstat_npmcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcpl_ct_node*)* @_pmcpl_ct_expand_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_pmcpl_ct_expand_inline(%struct.pmcpl_ct_node* %0) #0 {
  %2 = alloca %struct.pmcpl_ct_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.pmcpl_ct_node*, align 8
  %17 = alloca i32, align 4
  store %struct.pmcpl_ct_node* %0, %struct.pmcpl_ct_node** %2, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %25 = load i32, i32* @PATH_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %28 = load i32, i32* @PATH_MAX, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  %31 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %32 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %31, i32 0, i32 5
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %37 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  store i64 %39, i64* %8, align 8
  store i32 0, i32* %5, align 4
  %40 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %41 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %40, i32 0, i32 5
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = trunc i64 %19 to i32
  %45 = trunc i64 %23 to i32
  %46 = call i32 @pmcstat_image_addr2line(%struct.TYPE_9__* %42, i64 %43, i8* %21, i32 %44, i32* %5, i8* %24, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %1
  store i32 1, i32* %17, align 4
  br label %197

49:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %193, %49
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %53 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %196

56:                                               ; preds = %50
  %57 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %58 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %57, i32 0, i32 5
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %63 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %61, %69
  store i64 %70, i64* %9, align 8
  store i32 0, i32* %6, align 4
  %71 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %72 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %71, i32 0, i32 5
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %19 to i32
  %76 = trunc i64 %26 to i32
  %77 = call i32 @pmcstat_image_addr2line(%struct.TYPE_9__* %73, i64 %74, i8* %21, i32 %75, i32* %6, i8* %27, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %56
  br label %193

80:                                               ; preds = %56
  %81 = call i64 @strcmp(i8* %27, i8* %24)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %193

84:                                               ; preds = %80
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 0), align 4
  %86 = icmp sge i32 %85, 2
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @args, i32 0, i32 1), align 4
  %89 = load i64, i64* %9, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @fprintf(i32 %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %90, i8* %27, i8* %24)
  br label %92

92:                                               ; preds = %87, %84
  %93 = trunc i64 %29 to i32
  %94 = call i32 @snprintf(i8* %30, i32 %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %24)
  %95 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %96 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %95, i32 0, i32 5
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %99 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %102 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call %struct.pmcpl_ct_node* @pmcpl_ct_node_hash_lookup(%struct.TYPE_9__* %97, i64 %100, i32 %103, i8* %21, i8* %30)
  store %struct.pmcpl_ct_node* %104, %struct.pmcpl_ct_node** %16, align 8
  %105 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %16, align 8
  %106 = icmp ne %struct.pmcpl_ct_node* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %110 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %109, i32 0, i32 1
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %10, align 8
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %189, %92
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @pmcstat_npmcs, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %192

121:                                              ; preds = %117
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %124 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = call i32 @PMCPL_CT_SAMPLE(i32 %122, %struct.TYPE_11__* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  br label %189

134:                                              ; preds = %121
  %135 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %16, align 8
  %136 = load i32, i32* %4, align 4
  %137 = load i64, i64* %10, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @pmcpl_ct_instr_add(%struct.pmcpl_ct_node* %135, i32 %136, i64 %137, i32 %138)
  %140 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %141 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %16, align 8
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @pmcpl_ct_node_update(%struct.pmcpl_ct_node* %140, %struct.pmcpl_ct_node* %141, i32 %142, i32 %143, i32 0)
  %145 = load i32, i32* %4, align 4
  %146 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %147 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %145, %149
  br i1 %150, label %151, label %176

151:                                              ; preds = %134
  %152 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %153 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %152, i32 0, i32 1
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %166 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = sub nsw i64 %173, %164
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %171, align 4
  br label %176

176:                                              ; preds = %151, %134
  %177 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %178 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %177, i32 0, i32 1
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = load i32, i32* %3, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = load i32, i32* %4, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  store i64 0, i64* %188, align 8
  br label %189

189:                                              ; preds = %176, %133
  %190 = load i32, i32* %4, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %4, align 4
  br label %117

192:                                              ; preds = %117
  br label %193

193:                                              ; preds = %192, %83, %79
  %194 = load i32, i32* %3, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %3, align 4
  br label %50

196:                                              ; preds = %50
  store i32 0, i32* %17, align 4
  br label %197

197:                                              ; preds = %196, %48
  %198 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %17, align 4
  switch i32 %199, label %201 [
    i32 0, label %200
    i32 1, label %200
  ]

200:                                              ; preds = %197, %197
  ret void

201:                                              ; preds = %197
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pmcstat_image_addr2line(%struct.TYPE_9__*, i64, i8*, i32, i32*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local %struct.pmcpl_ct_node* @pmcpl_ct_node_hash_lookup(%struct.TYPE_9__*, i64, i32, i8*, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @PMCPL_CT_SAMPLE(i32, %struct.TYPE_11__*) #2

declare dso_local i32 @pmcpl_ct_instr_add(%struct.pmcpl_ct_node*, i32, i64, i32) #2

declare dso_local i32 @pmcpl_ct_node_update(%struct.pmcpl_ct_node*, %struct.pmcpl_ct_node*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
