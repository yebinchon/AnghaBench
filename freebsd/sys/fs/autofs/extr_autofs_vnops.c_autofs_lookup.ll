; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vnops.c_autofs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_lookup_args = type { %struct.componentname*, %struct.vnode**, %struct.vnode* }
%struct.componentname = type { i32, i32, i8*, i64, i32, i32 }
%struct.vnode = type { %struct.autofs_node*, %struct.mount* }
%struct.autofs_node = type { i32* }
%struct.mount = type { i32 }
%struct.autofs_mount = type { i32 }

@ISDOTDOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"NULL parent\00", align 1
@autofs_vget_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"vn_vget_ino_gen() failed with error %d\00", align 1
@ERELOOKUP = common dso_local global i32 0, align 4
@ISLASTCN = common dso_local global i32 0, align 4
@CREATE = common dso_local global i64 0, align 8
@EJUSTRETURN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_lookup_args*)* @autofs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_lookup(%struct.vop_lookup_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_lookup_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode**, align 8
  %7 = alloca %struct.mount*, align 8
  %8 = alloca %struct.autofs_mount*, align 8
  %9 = alloca %struct.autofs_node*, align 8
  %10 = alloca %struct.autofs_node*, align 8
  %11 = alloca %struct.componentname*, align 8
  %12 = alloca i32, align 4
  store %struct.vop_lookup_args* %0, %struct.vop_lookup_args** %3, align 8
  %13 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %13, i32 0, i32 2
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %4, align 8
  %16 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %16, i32 0, i32 1
  %18 = load %struct.vnode**, %struct.vnode*** %17, align 8
  store %struct.vnode** %18, %struct.vnode*** %6, align 8
  %19 = load %struct.vnode*, %struct.vnode** %4, align 8
  %20 = getelementptr inbounds %struct.vnode, %struct.vnode* %19, i32 0, i32 1
  %21 = load %struct.mount*, %struct.mount** %20, align 8
  store %struct.mount* %21, %struct.mount** %7, align 8
  %22 = load %struct.mount*, %struct.mount** %7, align 8
  %23 = call %struct.autofs_mount* @VFSTOAUTOFS(%struct.mount* %22)
  store %struct.autofs_mount* %23, %struct.autofs_mount** %8, align 8
  %24 = load %struct.vnode*, %struct.vnode** %4, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 0
  %26 = load %struct.autofs_node*, %struct.autofs_node** %25, align 8
  store %struct.autofs_node* %26, %struct.autofs_node** %9, align 8
  %27 = load %struct.vop_lookup_args*, %struct.vop_lookup_args** %3, align 8
  %28 = getelementptr inbounds %struct.vop_lookup_args, %struct.vop_lookup_args* %27, i32 0, i32 0
  %29 = load %struct.componentname*, %struct.componentname** %28, align 8
  store %struct.componentname* %29, %struct.componentname** %11, align 8
  %30 = load %struct.componentname*, %struct.componentname** %11, align 8
  %31 = getelementptr inbounds %struct.componentname, %struct.componentname* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ISDOTDOT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %1
  %37 = load %struct.autofs_node*, %struct.autofs_node** %9, align 8
  %38 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.vnode*, %struct.vnode** %4, align 8
  %44 = load i32, i32* @autofs_vget_callback, align 4
  %45 = load %struct.autofs_node*, %struct.autofs_node** %9, align 8
  %46 = getelementptr inbounds %struct.autofs_node, %struct.autofs_node* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.componentname*, %struct.componentname** %11, align 8
  %49 = getelementptr inbounds %struct.componentname, %struct.componentname* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %52 = call i32 @vn_vget_ino_gen(%struct.vnode* %43, i32 %44, i32* %47, i32 %50, %struct.vnode** %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %36
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @AUTOFS_WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %2, align 4
  br label %180

59:                                               ; preds = %36
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %2, align 4
  br label %180

61:                                               ; preds = %1
  %62 = load %struct.componentname*, %struct.componentname** %11, align 8
  %63 = getelementptr inbounds %struct.componentname, %struct.componentname* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.componentname*, %struct.componentname** %11, align 8
  %68 = getelementptr inbounds %struct.componentname, %struct.componentname* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 46
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.vnode*, %struct.vnode** %4, align 8
  %76 = call i32 @vref(%struct.vnode* %75)
  %77 = load %struct.vnode*, %struct.vnode** %4, align 8
  %78 = load %struct.vnode**, %struct.vnode*** %6, align 8
  store %struct.vnode* %77, %struct.vnode** %78, align 8
  store i32 0, i32* %2, align 4
  br label %180

79:                                               ; preds = %66, %61
  %80 = load %struct.autofs_node*, %struct.autofs_node** %9, align 8
  %81 = load %struct.componentname*, %struct.componentname** %11, align 8
  %82 = getelementptr inbounds %struct.componentname, %struct.componentname* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.componentname*, %struct.componentname** %11, align 8
  %85 = getelementptr inbounds %struct.componentname, %struct.componentname* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @autofs_cached(%struct.autofs_node* %80, i8* %83, i32 %86)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %79
  %90 = load %struct.componentname*, %struct.componentname** %11, align 8
  %91 = getelementptr inbounds %struct.componentname, %struct.componentname* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @autofs_ignore_thread(i32 %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %89
  %96 = load %struct.vnode*, %struct.vnode** %4, align 8
  %97 = load %struct.componentname*, %struct.componentname** %11, align 8
  %98 = getelementptr inbounds %struct.componentname, %struct.componentname* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.componentname*, %struct.componentname** %11, align 8
  %101 = getelementptr inbounds %struct.componentname, %struct.componentname* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @autofs_trigger_vn(%struct.vnode* %96, i8* %99, i32 %102, %struct.vnode** %5)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %2, align 4
  br label %180

108:                                              ; preds = %95
  %109 = load %struct.vnode*, %struct.vnode** %5, align 8
  %110 = icmp ne %struct.vnode* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load %struct.vnode*, %struct.vnode** %5, align 8
  %113 = call i32 @vput(%struct.vnode* %112)
  %114 = load i32, i32* @ERELOOKUP, align 4
  store i32 %114, i32* %2, align 4
  br label %180

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %89, %79
  %117 = load %struct.autofs_mount*, %struct.autofs_mount** %8, align 8
  %118 = call i32 @AUTOFS_SLOCK(%struct.autofs_mount* %117)
  %119 = load %struct.autofs_node*, %struct.autofs_node** %9, align 8
  %120 = load %struct.componentname*, %struct.componentname** %11, align 8
  %121 = getelementptr inbounds %struct.componentname, %struct.componentname* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.componentname*, %struct.componentname** %11, align 8
  %124 = getelementptr inbounds %struct.componentname, %struct.componentname* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @autofs_node_find(%struct.autofs_node* %119, i8* %122, i32 %125, %struct.autofs_node** %10)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %116
  %130 = load %struct.componentname*, %struct.componentname** %11, align 8
  %131 = getelementptr inbounds %struct.componentname, %struct.componentname* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ISLASTCN, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %129
  %137 = load %struct.componentname*, %struct.componentname** %11, align 8
  %138 = getelementptr inbounds %struct.componentname, %struct.componentname* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @CREATE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load %struct.autofs_mount*, %struct.autofs_mount** %8, align 8
  %144 = call i32 @AUTOFS_SUNLOCK(%struct.autofs_mount* %143)
  %145 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %145, i32* %2, align 4
  br label %180

146:                                              ; preds = %136, %129
  %147 = load %struct.autofs_mount*, %struct.autofs_mount** %8, align 8
  %148 = call i32 @AUTOFS_SUNLOCK(%struct.autofs_mount* %147)
  %149 = load i32, i32* @ENOENT, align 4
  store i32 %149, i32* %2, align 4
  br label %180

150:                                              ; preds = %116
  %151 = load %struct.autofs_mount*, %struct.autofs_mount** %8, align 8
  %152 = call i32 @AUTOFS_SUNLOCK(%struct.autofs_mount* %151)
  %153 = load %struct.autofs_node*, %struct.autofs_node** %10, align 8
  %154 = load %struct.mount*, %struct.mount** %7, align 8
  %155 = load %struct.componentname*, %struct.componentname** %11, align 8
  %156 = getelementptr inbounds %struct.componentname, %struct.componentname* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %159 = call i32 @autofs_node_vn(%struct.autofs_node* %153, %struct.mount* %154, i32 %157, %struct.vnode** %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %179

162:                                              ; preds = %150
  %163 = load %struct.componentname*, %struct.componentname** %11, align 8
  %164 = getelementptr inbounds %struct.componentname, %struct.componentname* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @ISLASTCN, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %162
  %170 = load %struct.componentname*, %struct.componentname** %11, align 8
  %171 = getelementptr inbounds %struct.componentname, %struct.componentname* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @CREATE, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %176, i32* %2, align 4
  br label %180

177:                                              ; preds = %169, %162
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %2, align 4
  br label %180

179:                                              ; preds = %150
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %179, %177, %175, %146, %142, %111, %106, %74, %59, %55
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local %struct.autofs_mount* @VFSTOAUTOFS(%struct.mount*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vn_vget_ino_gen(%struct.vnode*, i32, i32*, i32, %struct.vnode**) #1

declare dso_local i32 @AUTOFS_WARN(i8*, i32) #1

declare dso_local i32 @vref(%struct.vnode*) #1

declare dso_local i32 @autofs_cached(%struct.autofs_node*, i8*, i32) #1

declare dso_local i32 @autofs_ignore_thread(i32) #1

declare dso_local i32 @autofs_trigger_vn(%struct.vnode*, i8*, i32, %struct.vnode**) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @AUTOFS_SLOCK(%struct.autofs_mount*) #1

declare dso_local i32 @autofs_node_find(%struct.autofs_node*, i8*, i32, %struct.autofs_node**) #1

declare dso_local i32 @AUTOFS_SUNLOCK(%struct.autofs_mount*) #1

declare dso_local i32 @autofs_node_vn(%struct.autofs_node*, %struct.mount*, i32, %struct.vnode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
