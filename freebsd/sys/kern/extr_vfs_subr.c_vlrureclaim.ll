; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vlrureclaim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vlrureclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, i32 }
%struct.vnode = type { i64, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@V_WAIT = common dso_local global i32 0, align 4
@gapvnodes = common dso_local global i64 0, align 8
@desiredvnodes = common dso_local global i32 0, align 4
@VMARKER = common dso_local global i64 0, align 8
@v_nmntvnodes = common dso_local global i32 0, align 4
@VI_FREE = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@LK_INTERLOCK = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"VI_DOOMED unexpectedly detected in vlrureclaim()\00", align 1
@recycles_count = common dso_local global i32 0, align 4
@PRI_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32, i32)* @vlrureclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlrureclaim(%struct.mount* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @V_WAIT, align 4
  %12 = call i32 @vn_start_write(i32* null, %struct.mount** %4, i32 %11)
  %13 = load %struct.mount*, %struct.mount** %4, align 8
  %14 = call i32 @MNT_ILOCK(%struct.mount* %13)
  %15 = load %struct.mount*, %struct.mount** %4, align 8
  %16 = getelementptr inbounds %struct.mount, %struct.mount* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i64, i64* @gapvnodes, align 8
  %20 = trunc i64 %19 to i32
  %21 = mul nsw i32 %18, %20
  %22 = load i32, i32* @desiredvnodes, align 4
  %23 = call i32 @imax(i32 %22, i32 1)
  %24 = sdiv i32 %21, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sdiv i32 %25, 10
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %210, %203, %3
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %213

37:                                               ; preds = %35
  %38 = load %struct.mount*, %struct.mount** %4, align 8
  %39 = getelementptr inbounds %struct.mount, %struct.mount* %38, i32 0, i32 1
  %40 = call %struct.vnode* @TAILQ_FIRST(i32* %39)
  store %struct.vnode* %40, %struct.vnode** %7, align 8
  br label %41

41:                                               ; preds = %52, %37
  %42 = load %struct.vnode*, %struct.vnode** %7, align 8
  %43 = icmp ne %struct.vnode* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.vnode*, %struct.vnode** %7, align 8
  %46 = getelementptr inbounds %struct.vnode, %struct.vnode* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VMARKER, align 8
  %49 = icmp eq i64 %47, %48
  br label %50

50:                                               ; preds = %44, %41
  %51 = phi i1 [ false, %41 ], [ %49, %44 ]
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = load %struct.vnode*, %struct.vnode** %7, align 8
  %54 = load i32, i32* @v_nmntvnodes, align 4
  %55 = call %struct.vnode* @TAILQ_NEXT(%struct.vnode* %53, i32 %54)
  store %struct.vnode* %55, %struct.vnode** %7, align 8
  br label %41

56:                                               ; preds = %50
  %57 = load %struct.vnode*, %struct.vnode** %7, align 8
  %58 = icmp eq %struct.vnode* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %213

60:                                               ; preds = %56
  %61 = load %struct.mount*, %struct.mount** %4, align 8
  %62 = getelementptr inbounds %struct.mount, %struct.mount* %61, i32 0, i32 1
  %63 = load %struct.vnode*, %struct.vnode** %7, align 8
  %64 = load i32, i32* @v_nmntvnodes, align 4
  %65 = call i32 @TAILQ_REMOVE(i32* %62, %struct.vnode* %63, i32 %64)
  %66 = load %struct.mount*, %struct.mount** %4, align 8
  %67 = getelementptr inbounds %struct.mount, %struct.mount* %66, i32 0, i32 1
  %68 = load %struct.vnode*, %struct.vnode** %7, align 8
  %69 = load i32, i32* @v_nmntvnodes, align 4
  %70 = call i32 @TAILQ_INSERT_TAIL(i32* %67, %struct.vnode* %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %8, align 4
  %73 = load %struct.vnode*, %struct.vnode** %7, align 8
  %74 = call i32 @VI_TRYLOCK(%struct.vnode* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %60
  br label %200

77:                                               ; preds = %60
  %78 = load %struct.vnode*, %struct.vnode** %7, align 8
  %79 = getelementptr inbounds %struct.vnode, %struct.vnode* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %117, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load %struct.vnode*, %struct.vnode** %7, align 8
  %87 = getelementptr inbounds %struct.vnode, %struct.vnode* %86, i32 0, i32 3
  %88 = call i32 @LIST_EMPTY(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %85, %82
  %91 = load %struct.vnode*, %struct.vnode** %7, align 8
  %92 = getelementptr inbounds %struct.vnode, %struct.vnode* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @VI_FREE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %117, label %97

97:                                               ; preds = %90
  %98 = load %struct.vnode*, %struct.vnode** %7, align 8
  %99 = getelementptr inbounds %struct.vnode, %struct.vnode* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @VI_DOOMED, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %117, label %104

104:                                              ; preds = %97
  %105 = load %struct.vnode*, %struct.vnode** %7, align 8
  %106 = getelementptr inbounds %struct.vnode, %struct.vnode* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = icmp ne %struct.TYPE_2__* %107, null
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load %struct.vnode*, %struct.vnode** %7, align 8
  %111 = getelementptr inbounds %struct.vnode, %struct.vnode* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %109, %97, %90, %85, %77
  %118 = load %struct.vnode*, %struct.vnode** %7, align 8
  %119 = call i32 @VI_UNLOCK(%struct.vnode* %118)
  br label %200

120:                                              ; preds = %109, %104
  %121 = load %struct.mount*, %struct.mount** %4, align 8
  %122 = call i32 @MNT_IUNLOCK(%struct.mount* %121)
  %123 = load %struct.vnode*, %struct.vnode** %7, align 8
  %124 = call i32 @vholdl(%struct.vnode* %123)
  %125 = load %struct.vnode*, %struct.vnode** %7, align 8
  %126 = load i32, i32* @LK_INTERLOCK, align 4
  %127 = load i32, i32* @LK_EXCLUSIVE, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @LK_NOWAIT, align 4
  %130 = or i32 %128, %129
  %131 = call i64 @VOP_LOCK(%struct.vnode* %125, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %120
  %134 = load %struct.vnode*, %struct.vnode** %7, align 8
  %135 = call i32 @vdrop(%struct.vnode* %134)
  br label %195

136:                                              ; preds = %120
  %137 = load %struct.vnode*, %struct.vnode** %7, align 8
  %138 = call i32 @VI_LOCK(%struct.vnode* %137)
  %139 = load %struct.vnode*, %struct.vnode** %7, align 8
  %140 = getelementptr inbounds %struct.vnode, %struct.vnode* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %171, label %143

143:                                              ; preds = %136
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = load %struct.vnode*, %struct.vnode** %7, align 8
  %148 = getelementptr inbounds %struct.vnode, %struct.vnode* %147, i32 0, i32 3
  %149 = call i32 @LIST_EMPTY(i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %171

151:                                              ; preds = %146, %143
  %152 = load %struct.vnode*, %struct.vnode** %7, align 8
  %153 = getelementptr inbounds %struct.vnode, %struct.vnode* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @VI_FREE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %171, label %158

158:                                              ; preds = %151
  %159 = load %struct.vnode*, %struct.vnode** %7, align 8
  %160 = getelementptr inbounds %struct.vnode, %struct.vnode* %159, i32 0, i32 2
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = icmp ne %struct.TYPE_2__* %161, null
  br i1 %162, label %163, label %176

163:                                              ; preds = %158
  %164 = load %struct.vnode*, %struct.vnode** %7, align 8
  %165 = getelementptr inbounds %struct.vnode, %struct.vnode* %164, i32 0, i32 2
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %163, %151, %146, %136
  %172 = load %struct.vnode*, %struct.vnode** %7, align 8
  %173 = call i32 @VOP_UNLOCK(%struct.vnode* %172, i32 0)
  %174 = load %struct.vnode*, %struct.vnode** %7, align 8
  %175 = call i32 @vdropl(%struct.vnode* %174)
  br label %195

176:                                              ; preds = %163, %158
  %177 = load %struct.vnode*, %struct.vnode** %7, align 8
  %178 = getelementptr inbounds %struct.vnode, %struct.vnode* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @VI_DOOMED, align 4
  %181 = and i32 %179, %180
  %182 = icmp eq i32 %181, 0
  %183 = zext i1 %182 to i32
  %184 = call i32 @KASSERT(i32 %183, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %185 = load i32, i32* @recycles_count, align 4
  %186 = call i32 @counter_u64_add(i32 %185, i32 1)
  %187 = load %struct.vnode*, %struct.vnode** %7, align 8
  %188 = call i32 @vgonel(%struct.vnode* %187)
  %189 = load %struct.vnode*, %struct.vnode** %7, align 8
  %190 = call i32 @VOP_UNLOCK(%struct.vnode* %189, i32 0)
  %191 = load %struct.vnode*, %struct.vnode** %7, align 8
  %192 = call i32 @vdropl(%struct.vnode* %191)
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %176, %171, %133
  %196 = call i32 (...) @should_yield()
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  br label %210

199:                                              ; preds = %195
  br label %207

200:                                              ; preds = %117, %76
  %201 = call i32 (...) @should_yield()
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %200
  br label %28

204:                                              ; preds = %200
  %205 = load %struct.mount*, %struct.mount** %4, align 8
  %206 = call i32 @MNT_IUNLOCK(%struct.mount* %205)
  br label %207

207:                                              ; preds = %204, %199
  %208 = load i32, i32* @PRI_USER, align 4
  %209 = call i32 @kern_yield(i32 %208)
  br label %210

210:                                              ; preds = %207, %198
  %211 = load %struct.mount*, %struct.mount** %4, align 8
  %212 = call i32 @MNT_ILOCK(%struct.mount* %211)
  br label %28

213:                                              ; preds = %59, %35
  %214 = load %struct.mount*, %struct.mount** %4, align 8
  %215 = call i32 @MNT_IUNLOCK(%struct.mount* %214)
  %216 = load %struct.mount*, %struct.mount** %4, align 8
  %217 = call i32 @vn_finished_write(%struct.mount* %216)
  %218 = load i32, i32* %9, align 4
  ret i32 %218
}

declare dso_local i32 @vn_start_write(i32*, %struct.mount**, i32) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local %struct.vnode* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.vnode* @TAILQ_NEXT(%struct.vnode*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vnode*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.vnode*, i32) #1

declare dso_local i32 @VI_TRYLOCK(%struct.vnode*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @vholdl(%struct.vnode*) #1

declare dso_local i64 @VOP_LOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vdropl(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @vgonel(%struct.vnode*) #1

declare dso_local i32 @should_yield(...) #1

declare dso_local i32 @kern_yield(i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
