; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_start_secondary_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_start_secondary_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.mount = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@V_MNTREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"V_MNTREF requires mp\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MNTK_SUSPENDED = common dso_local global i32 0, align 4
@MNTK_SUSPEND2 = common dso_local global i32 0, align 4
@V_NOWAIT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@PUSER = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@VFCF_SBDRY = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"suspfs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_start_secondary_write(%struct.vnode* %0, %struct.mount** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.mount**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mount*, align 8
  %9 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.mount** %1, %struct.mount*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @V_MNTREF, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %3
  %15 = load %struct.mount**, %struct.mount*** %6, align 8
  %16 = load %struct.mount*, %struct.mount** %15, align 8
  %17 = icmp ne %struct.mount* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.vnode*, %struct.vnode** %5, align 8
  %20 = icmp eq %struct.vnode* %19, null
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i1 [ false, %14 ], [ %20, %18 ]
  br label %23

23:                                               ; preds = %21, %3
  %24 = phi i1 [ true, %3 ], [ %22, %21 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %139, %23
  %28 = load %struct.vnode*, %struct.vnode** %5, align 8
  %29 = icmp ne %struct.vnode* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %struct.vnode*, %struct.vnode** %5, align 8
  %32 = load %struct.mount**, %struct.mount*** %6, align 8
  %33 = call i32 @VOP_GETWRITEMOUNT(%struct.vnode* %31, %struct.mount** %32)
  store i32 %33, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.mount**, %struct.mount*** %6, align 8
  store %struct.mount* null, %struct.mount** %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %142

42:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %142

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.mount**, %struct.mount*** %6, align 8
  %46 = load %struct.mount*, %struct.mount** %45, align 8
  store %struct.mount* %46, %struct.mount** %8, align 8
  %47 = icmp eq %struct.mount* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %142

49:                                               ; preds = %44
  %50 = load %struct.mount*, %struct.mount** %8, align 8
  %51 = call i32 @vn_suspendable(%struct.mount* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = load %struct.vnode*, %struct.vnode** %5, align 8
  %55 = icmp ne %struct.vnode* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @V_MNTREF, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %53
  %62 = load %struct.mount*, %struct.mount** %8, align 8
  %63 = call i32 @vfs_rel(%struct.mount* %62)
  br label %64

64:                                               ; preds = %61, %56
  store i32 0, i32* %4, align 4
  br label %142

65:                                               ; preds = %49
  %66 = load %struct.mount*, %struct.mount** %8, align 8
  %67 = call i32 @MNT_ILOCK(%struct.mount* %66)
  %68 = load %struct.vnode*, %struct.vnode** %5, align 8
  %69 = icmp eq %struct.vnode* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @V_MNTREF, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.mount*, %struct.mount** %8, align 8
  %77 = call i32 @MNT_REF(%struct.mount* %76)
  br label %78

78:                                               ; preds = %75, %70, %65
  %79 = load %struct.mount*, %struct.mount** %8, align 8
  %80 = getelementptr inbounds %struct.mount, %struct.mount* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MNTK_SUSPENDED, align 4
  %83 = load i32, i32* @MNTK_SUSPEND2, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %81, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %78
  %88 = load %struct.mount*, %struct.mount** %8, align 8
  %89 = getelementptr inbounds %struct.mount, %struct.mount* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load %struct.mount*, %struct.mount** %8, align 8
  %93 = getelementptr inbounds %struct.mount, %struct.mount* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.mount*, %struct.mount** %8, align 8
  %97 = call i32 @MNT_IUNLOCK(%struct.mount* %96)
  store i32 0, i32* %4, align 4
  br label %142

98:                                               ; preds = %78
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @V_NOWAIT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.mount*, %struct.mount** %8, align 8
  %105 = call i32 @MNT_REL(%struct.mount* %104)
  %106 = load %struct.mount*, %struct.mount** %8, align 8
  %107 = call i32 @MNT_IUNLOCK(%struct.mount* %106)
  %108 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %108, i32* %4, align 4
  br label %142

109:                                              ; preds = %98
  %110 = load %struct.mount*, %struct.mount** %8, align 8
  %111 = getelementptr inbounds %struct.mount, %struct.mount* %110, i32 0, i32 2
  %112 = load %struct.mount*, %struct.mount** %8, align 8
  %113 = call i32 @MNT_MTX(%struct.mount* %112)
  %114 = load i32, i32* @PUSER, align 4
  %115 = sub nsw i32 %114, 1
  %116 = load i32, i32* @PDROP, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.mount*, %struct.mount** %8, align 8
  %119 = getelementptr inbounds %struct.mount, %struct.mount* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @VFCF_SBDRY, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %109
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @PCATCH, align 4
  %129 = and i32 %127, %128
  br label %131

130:                                              ; preds = %109
  br label %131

131:                                              ; preds = %130, %126
  %132 = phi i32 [ %129, %126 ], [ 0, %130 ]
  %133 = or i32 %117, %132
  %134 = call i32 @msleep(i32* %111, i32 %113, i32 %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %134, i32* %9, align 4
  %135 = load %struct.mount*, %struct.mount** %8, align 8
  %136 = call i32 @vfs_rel(%struct.mount* %135)
  %137 = load i32, i32* %9, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %27

140:                                              ; preds = %131
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %103, %87, %64, %48, %42, %40
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VOP_GETWRITEMOUNT(%struct.vnode*, %struct.mount**) #1

declare dso_local i32 @vn_suspendable(%struct.mount*) #1

declare dso_local i32 @vfs_rel(%struct.mount*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_REF(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @MNT_REL(%struct.mount*) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @MNT_MTX(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
