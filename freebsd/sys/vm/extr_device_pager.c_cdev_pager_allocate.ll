; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_device_pager.c_cdev_pager_allocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_device_pager.c_cdev_pager_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_12__*, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.cdev_pager_ops*, i32, i8* }
%struct.cdev_pager_ops = type { i64 (i8*, i32, i32, i32, %struct.ucred*, i32*)*, i32* }
%struct.ucred = type { i32 }

@OBJT_DEVICE = common dso_local global i32 0, align 4
@OBJT_MGTDEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"populate on unmanaged device pager\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@OBJ_MAX_SIZE = common dso_local global i64 0, align 8
@dev_pager_mtx = common dso_local global i32 0, align 4
@dev_pager_object_list = common dso_local global i32 0, align 4
@OBJ_COLORED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Inconsistent device pager type %p %d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Inconsistent devops %p %p\00", align 1
@pager_object_list = common dso_local global i32 0, align 4
@OBJ_POPULATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @cdev_pager_allocate(i8* %0, i32 %1, %struct.cdev_pager_ops* %2, i32 %3, i32 %4, i32 %5, %struct.ucred* %6) #0 {
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cdev_pager_ops*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ucred*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.cdev_pager_ops* %2, %struct.cdev_pager_ops** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.ucred* %6, %struct.ucred** %15, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @OBJT_DEVICE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %7
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @OBJT_MGTDEVICE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  br label %215

28:                                               ; preds = %23, %7
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @OBJT_MGTDEVICE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load %struct.cdev_pager_ops*, %struct.cdev_pager_ops** %11, align 8
  %34 = getelementptr inbounds %struct.cdev_pager_ops, %struct.cdev_pager_ops* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i1 [ true, %28 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @KASSERT(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @PAGE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  br label %215

46:                                               ; preds = %37
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @round_page(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i64 @OFF_TO_IDX(i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @OFF_TO_IDX(i32 %51)
  %53 = add nsw i64 %50, %52
  store i64 %53, i64* %18, align 8
  %54 = load i64, i64* %18, align 8
  %55 = load i64, i64* @OBJ_MAX_SIZE, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %46
  %58 = load i64, i64* %18, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @OFF_TO_IDX(i32 %59)
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %18, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i64 @OFF_TO_IDX(i32 %64)
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %57, %46
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  br label %215

68:                                               ; preds = %62
  %69 = load %struct.cdev_pager_ops*, %struct.cdev_pager_ops** %11, align 8
  %70 = getelementptr inbounds %struct.cdev_pager_ops, %struct.cdev_pager_ops* %69, i32 0, i32 0
  %71 = load i64 (i8*, i32, i32, i32, %struct.ucred*, i32*)*, i64 (i8*, i32, i32, i32, %struct.ucred*, i32*)** %70, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.ucred*, %struct.ucred** %15, align 8
  %77 = call i64 %71(i8* %72, i32 %73, i32 %74, i32 %75, %struct.ucred* %76, i32* %19)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  br label %215

80:                                               ; preds = %68
  %81 = call i32 @mtx_lock(i32* @dev_pager_mtx)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %17, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call %struct.TYPE_12__* @vm_pager_object_lookup(i32* @dev_pager_object_list, i8* %82)
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %16, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %85 = icmp eq %struct.TYPE_12__* %84, null
  br i1 %85, label %86, label %176

86:                                               ; preds = %80
  %87 = call i32 @mtx_unlock(i32* @dev_pager_mtx)
  %88 = load i32, i32* %10, align 4
  %89 = load i64, i64* %18, align 8
  %90 = call %struct.TYPE_12__* @vm_object_allocate(i32 %88, i64 %89)
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %17, align 8
  %91 = load i32, i32* @OBJ_COLORED, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = bitcast i8* %99 to %struct.TYPE_12__*
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %102, align 8
  %103 = load %struct.cdev_pager_ops*, %struct.cdev_pager_ops** %11, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store %struct.cdev_pager_ops* %103, %struct.cdev_pager_ops** %107, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  store i8* %108, i8** %112, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = call i32 @TAILQ_INIT(i32* %116)
  %118 = call i32 @mtx_lock(i32* @dev_pager_mtx)
  %119 = load i8*, i8** %9, align 8
  %120 = call %struct.TYPE_12__* @vm_pager_object_lookup(i32* @dev_pager_object_list, i8* %119)
  store %struct.TYPE_12__* %120, %struct.TYPE_12__** %16, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %122 = icmp ne %struct.TYPE_12__* %121, null
  br i1 %122, label %123, label %157

123:                                              ; preds = %86
  %124 = load i64, i64* %18, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %124, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i64, i64* %18, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %129, %123
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %141 = load i32, i32* %10, align 4
  %142 = zext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  %144 = call i32 @KASSERT(i32 %139, i8* %143)
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load %struct.cdev_pager_ops*, %struct.cdev_pager_ops** %148, align 8
  %150 = load %struct.cdev_pager_ops*, %struct.cdev_pager_ops** %11, align 8
  %151 = icmp eq %struct.cdev_pager_ops* %149, %150
  %152 = zext i1 %151 to i32
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %154 = load %struct.cdev_pager_ops*, %struct.cdev_pager_ops** %11, align 8
  %155 = bitcast %struct.cdev_pager_ops* %154 to i8*
  %156 = call i32 @KASSERT(i32 %152, i8* %155)
  br label %175

157:                                              ; preds = %86
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %158, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %17, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = bitcast i8* %159 to %struct.TYPE_12__*
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  store %struct.TYPE_12__* %160, %struct.TYPE_12__** %162, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %164 = load i32, i32* @pager_object_list, align 4
  %165 = call i32 @TAILQ_INSERT_TAIL(i32* @dev_pager_object_list, %struct.TYPE_12__* %163, i32 %164)
  %166 = load %struct.cdev_pager_ops*, %struct.cdev_pager_ops** %11, align 8
  %167 = getelementptr inbounds %struct.cdev_pager_ops, %struct.cdev_pager_ops* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %157
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %172 = load i32, i32* @OBJ_POPULATE, align 4
  %173 = call i32 @vm_object_set_flag(%struct.TYPE_12__* %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %157
  br label %175

175:                                              ; preds = %174, %133
  br label %198

176:                                              ; preds = %80
  %177 = load i64, i64* %18, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %177, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load i64, i64* %18, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %182, %176
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %194 = load i32, i32* %10, align 4
  %195 = zext i32 %194 to i64
  %196 = inttoptr i64 %195 to i8*
  %197 = call i32 @KASSERT(i32 %192, i8* %196)
  br label %198

198:                                              ; preds = %186, %175
  %199 = call i32 @mtx_unlock(i32* @dev_pager_mtx)
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %201 = icmp ne %struct.TYPE_12__* %200, null
  br i1 %201, label %202, label %213

202:                                              ; preds = %198
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 2
  store %struct.TYPE_12__* %203, %struct.TYPE_12__** %205, align 8
  %206 = call i32 @mtx_lock(i32* @dev_pager_mtx)
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %208 = load i32, i32* @pager_object_list, align 4
  %209 = call i32 @TAILQ_INSERT_TAIL(i32* @dev_pager_object_list, %struct.TYPE_12__* %207, i32 %208)
  %210 = call i32 @mtx_unlock(i32* @dev_pager_mtx)
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %212 = call i32 @vm_object_deallocate(%struct.TYPE_12__* %211)
  br label %213

213:                                              ; preds = %202, %198
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %214, %struct.TYPE_12__** %8, align 8
  br label %215

215:                                              ; preds = %213, %79, %67, %45, %27
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  ret %struct.TYPE_12__* %216
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.TYPE_12__* @vm_pager_object_lookup(i32*, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.TYPE_12__* @vm_object_allocate(i32, i64) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @vm_object_set_flag(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @vm_object_deallocate(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
