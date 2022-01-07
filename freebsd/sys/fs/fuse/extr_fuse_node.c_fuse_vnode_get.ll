; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_node.c_fuse_vnode_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_node.c_fuse_vnode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32 }
%struct.fuse_entry_out = type { i64, i64, i32 }
%struct.vnode = type { i32 }
%struct.componentname = type { i32, i32, i8*, %struct.thread* }
%struct.timespec = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@ISDOTDOT = common dso_local global i32 0, align 4
@MAKEENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fuse_vnode_get\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_vnode_get(%struct.mount* %0, %struct.fuse_entry_out* %1, i32 %2, %struct.vnode* %3, %struct.vnode** %4, %struct.componentname* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mount*, align 8
  %10 = alloca %struct.fuse_entry_out*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.vnode**, align 8
  %14 = alloca %struct.componentname*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.thread*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.timespec, align 4
  store %struct.mount* %0, %struct.mount** %9, align 8
  store %struct.fuse_entry_out* %1, %struct.fuse_entry_out** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.vnode* %3, %struct.vnode** %12, align 8
  store %struct.vnode** %4, %struct.vnode*** %13, align 8
  store %struct.componentname* %5, %struct.componentname** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load %struct.componentname*, %struct.componentname** %14, align 8
  %21 = icmp ne %struct.componentname* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %7
  %23 = load %struct.componentname*, %struct.componentname** %14, align 8
  %24 = getelementptr inbounds %struct.componentname, %struct.componentname* %23, i32 0, i32 3
  %25 = load %struct.thread*, %struct.thread** %24, align 8
  br label %28

26:                                               ; preds = %7
  %27 = load %struct.thread*, %struct.thread** @curthread, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi %struct.thread* [ %25, %22 ], [ %27, %26 ]
  store %struct.thread* %29, %struct.thread** %16, align 8
  %30 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %10, align 8
  %31 = icmp ne %struct.fuse_entry_out* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %10, align 8
  %34 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ 0, %36 ]
  store i32 %38, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %39 = load %struct.mount*, %struct.mount** %9, align 8
  %40 = load %struct.thread*, %struct.thread** %16, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.vnode**, %struct.vnode*** %13, align 8
  %44 = call i32 @fuse_vnode_alloc(%struct.mount* %39, %struct.thread* %40, i32 %41, i32 %42, %struct.vnode** %43)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %18, align 4
  store i32 %48, i32* %8, align 4
  br label %167

49:                                               ; preds = %37
  %50 = load %struct.vnode*, %struct.vnode** %12, align 8
  %51 = icmp ne %struct.vnode* %50, null
  br i1 %51, label %52, label %92

52:                                               ; preds = %49
  %53 = load %struct.componentname*, %struct.componentname** %14, align 8
  %54 = icmp ne %struct.componentname* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.componentname*, %struct.componentname** %14, align 8
  %57 = getelementptr inbounds %struct.componentname, %struct.componentname* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ISDOTDOT, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br label %62

62:                                               ; preds = %55, %52
  %63 = phi i1 [ false, %52 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @MPASS(i32 %64)
  %66 = load %struct.componentname*, %struct.componentname** %14, align 8
  %67 = icmp ne %struct.componentname* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load %struct.componentname*, %struct.componentname** %14, align 8
  %70 = getelementptr inbounds %struct.componentname, %struct.componentname* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.componentname*, %struct.componentname** %14, align 8
  %75 = getelementptr inbounds %struct.componentname, %struct.componentname* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 46
  br label %81

81:                                               ; preds = %73, %68
  %82 = phi i1 [ false, %68 ], [ %80, %73 ]
  %83 = xor i1 %82, true
  br label %84

84:                                               ; preds = %81, %62
  %85 = phi i1 [ false, %62 ], [ %83, %81 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @MPASS(i32 %86)
  %88 = load %struct.vnode**, %struct.vnode*** %13, align 8
  %89 = load %struct.vnode*, %struct.vnode** %88, align 8
  %90 = load %struct.vnode*, %struct.vnode** %12, align 8
  %91 = call i32 @fuse_vnode_setparent(%struct.vnode* %89, %struct.vnode* %90)
  br label %92

92:                                               ; preds = %84, %49
  %93 = load %struct.vnode*, %struct.vnode** %12, align 8
  %94 = icmp ne %struct.vnode* %93, null
  br i1 %94, label %95, label %131

95:                                               ; preds = %92
  %96 = load %struct.componentname*, %struct.componentname** %14, align 8
  %97 = icmp ne %struct.componentname* %96, null
  br i1 %97, label %98, label %131

98:                                               ; preds = %95
  %99 = load %struct.componentname*, %struct.componentname** %14, align 8
  %100 = getelementptr inbounds %struct.componentname, %struct.componentname* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @MAKEENTRY, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %131

105:                                              ; preds = %98
  %106 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %10, align 8
  %107 = icmp ne %struct.fuse_entry_out* %106, null
  br i1 %107, label %108, label %131

108:                                              ; preds = %105
  %109 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %10, align 8
  %110 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %10, align 8
  %115 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %113, %108
  %119 = load %struct.vnode**, %struct.vnode*** %13, align 8
  %120 = load %struct.vnode*, %struct.vnode** %119, align 8
  %121 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %122 = load %struct.vnode*, %struct.vnode** %12, align 8
  %123 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %124 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %10, align 8
  %125 = call i32 @fuse_validity_2_timespec(%struct.fuse_entry_out* %124, %struct.timespec* %19)
  %126 = load %struct.vnode*, %struct.vnode** %12, align 8
  %127 = load %struct.vnode**, %struct.vnode*** %13, align 8
  %128 = load %struct.vnode*, %struct.vnode** %127, align 8
  %129 = load %struct.componentname*, %struct.componentname** %14, align 8
  %130 = call i32 @cache_enter_time(%struct.vnode* %126, %struct.vnode* %128, %struct.componentname* %129, %struct.timespec* %19, i32* null)
  br label %131

131:                                              ; preds = %118, %113, %105, %98, %95, %92
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.vnode**, %struct.vnode*** %13, align 8
  %134 = load %struct.vnode*, %struct.vnode** %133, align 8
  %135 = call %struct.TYPE_2__* @VTOFUD(%struct.vnode* %134)
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i32 %132, i32* %136, align 4
  %137 = load %struct.componentname*, %struct.componentname** %14, align 8
  %138 = icmp eq %struct.componentname* %137, null
  br i1 %138, label %159, label %139

139:                                              ; preds = %131
  %140 = load %struct.componentname*, %struct.componentname** %14, align 8
  %141 = getelementptr inbounds %struct.componentname, %struct.componentname* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @ISDOTDOT, align 4
  %144 = and i32 %142, %143
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %166

146:                                              ; preds = %139
  %147 = load %struct.componentname*, %struct.componentname** %14, align 8
  %148 = getelementptr inbounds %struct.componentname, %struct.componentname* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 1
  br i1 %150, label %159, label %151

151:                                              ; preds = %146
  %152 = load %struct.componentname*, %struct.componentname** %14, align 8
  %153 = getelementptr inbounds %struct.componentname, %struct.componentname* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 46
  br i1 %158, label %159, label %166

159:                                              ; preds = %151, %146, %131
  %160 = load %struct.vnode**, %struct.vnode*** %13, align 8
  %161 = load %struct.vnode*, %struct.vnode** %160, align 8
  %162 = call %struct.TYPE_2__* @VTOFUD(%struct.vnode* %161)
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %159, %151, %139
  store i32 0, i32* %8, align 4
  br label %167

167:                                              ; preds = %166, %47
  %168 = load i32, i32* %8, align 4
  ret i32 %168
}

declare dso_local i32 @fuse_vnode_alloc(%struct.mount*, %struct.thread*, i32, i32, %struct.vnode**) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @fuse_vnode_setparent(%struct.vnode*, %struct.vnode*) #1

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @fuse_validity_2_timespec(%struct.fuse_entry_out*, %struct.timespec*) #1

declare dso_local i32 @cache_enter_time(%struct.vnode*, %struct.vnode*, %struct.componentname*, %struct.timespec*, i32*) #1

declare dso_local %struct.TYPE_2__* @VTOFUD(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
