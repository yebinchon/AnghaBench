; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_lookup_args = type { %struct.vnode**, %struct.vnode*, %struct.componentname* }
%struct.vnode = type { i32, i32, %struct.mount* }
%struct.mount = type { i32 }
%struct.componentname = type { i32, i64 }

@ISLASTCN = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@DELETE = common dso_local global i64 0, align 8
@RENAME = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@ISDOTDOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ldvp %p fl %#x dvp %p fl %#x flags %#x\00", align 1
@EJUSTRETURN = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@CREATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_lookup_args*)* @null_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_lookup(%struct.vop_lookup_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_lookup_args*, align 8
  %4 = alloca %struct.componentname*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.mount*, align 8
  %11 = alloca i32, align 4
  store %struct.vop_lookup_args* %0, %struct.vop_lookup_args** %3, align 8
  %12 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %12, i32 0, i32 2
  %14 = load %struct.componentname*, %struct.componentname** %13, align 8
  store %struct.componentname* %14, %struct.componentname** %4, align 8
  %15 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %15, i32 0, i32 1
  %17 = load %struct.vnode*, %struct.vnode** %16, align 8
  store %struct.vnode* %17, %struct.vnode** %5, align 8
  %18 = load %struct.componentname*, %struct.componentname** %4, align 8
  %19 = getelementptr inbounds %struct.componentname, %struct.componentname* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.vnode*, %struct.vnode** %5, align 8
  %22 = getelementptr inbounds %struct.vnode, %struct.vnode* %21, i32 0, i32 2
  %23 = load %struct.mount*, %struct.mount** %22, align 8
  store %struct.mount* %23, %struct.mount** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ISLASTCN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %1
  %29 = load %struct.mount*, %struct.mount** %10, align 8
  %30 = getelementptr inbounds %struct.mount, %struct.mount* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MNT_RDONLY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = load %struct.componentname*, %struct.componentname** %4, align 8
  %37 = getelementptr inbounds %struct.componentname, %struct.componentname* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DELETE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.componentname*, %struct.componentname** %4, align 8
  %43 = getelementptr inbounds %struct.componentname, %struct.componentname* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RENAME, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %35
  %48 = load i32, i32* @EROFS, align 4
  store i32 %48, i32* %2, align 4
  br label %190

49:                                               ; preds = %41, %28, %1
  %50 = load %struct.vnode*, %struct.vnode** %5, align 8
  %51 = call %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode* %50)
  store %struct.vnode* %51, %struct.vnode** %8, align 8
  store %struct.vnode* null, %struct.vnode** %9, align 8
  store %struct.vnode* null, %struct.vnode** %7, align 8
  %52 = load %struct.vnode*, %struct.vnode** %8, align 8
  %53 = getelementptr inbounds %struct.vnode, %struct.vnode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VV_ROOT, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %49
  %59 = load %struct.vnode*, %struct.vnode** %5, align 8
  %60 = getelementptr inbounds %struct.vnode, %struct.vnode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @VV_ROOT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @ISDOTDOT, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br label %70

70:                                               ; preds = %65, %58
  %71 = phi i1 [ false, %58 ], [ %69, %65 ]
  br label %72

72:                                               ; preds = %70, %49
  %73 = phi i1 [ true, %49 ], [ %71, %70 ]
  %74 = zext i1 %73 to i32
  %75 = load %struct.vnode*, %struct.vnode** %8, align 8
  %76 = load %struct.vnode*, %struct.vnode** %8, align 8
  %77 = getelementptr inbounds %struct.vnode, %struct.vnode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.vnode*, %struct.vnode** %5, align 8
  %80 = load %struct.vnode*, %struct.vnode** %5, align 8
  %81 = getelementptr inbounds %struct.vnode, %struct.vnode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @KASSERT(i32 %74, i8* %85)
  %87 = load %struct.vnode*, %struct.vnode** %8, align 8
  %88 = call i32 @vhold(%struct.vnode* %87)
  %89 = load %struct.vnode*, %struct.vnode** %8, align 8
  %90 = load %struct.componentname*, %struct.componentname** %4, align 8
  %91 = call i32 @VOP_LOOKUP(%struct.vnode* %89, %struct.vnode** %9, %struct.componentname* %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %72
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @EJUSTRETURN, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %94, %72
  %99 = load %struct.vnode*, %struct.vnode** %5, align 8
  %100 = getelementptr inbounds %struct.vnode, %struct.vnode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @VI_DOOMED, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %98
  %106 = load i32, i32* @ENOENT, align 4
  store i32 %106, i32* %11, align 4
  %107 = load %struct.vnode*, %struct.vnode** %9, align 8
  %108 = icmp ne %struct.vnode* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load %struct.vnode*, %struct.vnode** %9, align 8
  %111 = call i32 @vput(%struct.vnode* %110)
  br label %112

112:                                              ; preds = %109, %105
  %113 = load %struct.vnode*, %struct.vnode** %8, align 8
  %114 = call i32 @VOP_UNLOCK(%struct.vnode* %113, i32 0)
  %115 = load %struct.vnode*, %struct.vnode** %5, align 8
  %116 = load i32, i32* @LK_EXCLUSIVE, align 4
  %117 = load i32, i32* @LK_RETRY, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @vn_lock(%struct.vnode* %115, i32 %118)
  br label %120

120:                                              ; preds = %112, %98, %94
  %121 = load %struct.vnode*, %struct.vnode** %8, align 8
  %122 = call i32 @vdrop(%struct.vnode* %121)
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @EJUSTRETURN, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %152

126:                                              ; preds = %120
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @ISLASTCN, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %126
  %132 = load %struct.mount*, %struct.mount** %10, align 8
  %133 = getelementptr inbounds %struct.mount, %struct.mount* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MNT_RDONLY, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %131
  %139 = load %struct.componentname*, %struct.componentname** %4, align 8
  %140 = getelementptr inbounds %struct.componentname, %struct.componentname* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @CREATE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = load %struct.componentname*, %struct.componentname** %4, align 8
  %146 = getelementptr inbounds %struct.componentname, %struct.componentname* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @RENAME, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %144, %138
  %151 = load i32, i32* @EROFS, align 4
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %150, %144, %131, %126, %120
  %153 = load i32, i32* %11, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @EJUSTRETURN, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %188

159:                                              ; preds = %155, %152
  %160 = load %struct.vnode*, %struct.vnode** %9, align 8
  %161 = icmp ne %struct.vnode* %160, null
  br i1 %161, label %162, label %188

162:                                              ; preds = %159
  %163 = load %struct.vnode*, %struct.vnode** %8, align 8
  %164 = load %struct.vnode*, %struct.vnode** %9, align 8
  %165 = icmp eq %struct.vnode* %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load %struct.vnode*, %struct.vnode** %5, align 8
  %168 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %169 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %168, i32 0, i32 0
  %170 = load %struct.vnode**, %struct.vnode*** %169, align 8
  store %struct.vnode* %167, %struct.vnode** %170, align 8
  %171 = load %struct.vnode*, %struct.vnode** %5, align 8
  %172 = call i32 @VREF(%struct.vnode* %171)
  %173 = load %struct.vnode*, %struct.vnode** %9, align 8
  %174 = call i32 @vrele(%struct.vnode* %173)
  br label %187

175:                                              ; preds = %162
  %176 = load %struct.mount*, %struct.mount** %10, align 8
  %177 = load %struct.vnode*, %struct.vnode** %9, align 8
  %178 = call i32 @null_nodeget(%struct.mount* %176, %struct.vnode* %177, %struct.vnode** %7)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %175
  %182 = load %struct.vnode*, %struct.vnode** %7, align 8
  %183 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %184 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %183, i32 0, i32 0
  %185 = load %struct.vnode**, %struct.vnode*** %184, align 8
  store %struct.vnode* %182, %struct.vnode** %185, align 8
  br label %186

186:                                              ; preds = %181, %175
  br label %187

187:                                              ; preds = %186, %166
  br label %188

188:                                              ; preds = %187, %159, %155
  %189 = load i32, i32* %11, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %188, %47
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vhold(%struct.vnode*) #1

declare dso_local i32 @VOP_LOOKUP(%struct.vnode*, %struct.vnode**, %struct.componentname*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @VREF(%struct.vnode*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @null_nodeget(%struct.mount*, %struct.vnode*, %struct.vnode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
