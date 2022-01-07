; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_mkwhiteout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_mkwhiteout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i8*, i32, i32 }
%struct.thread = type { i32 }
%struct.mount = type { i32 }

@NULLVP = common dso_local global %struct.vnode* null, align 8
@CREATE = common dso_local global i32 0, align 4
@HASBUF = common dso_local global i32 0, align 4
@namei_zone = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unionfs_mkwhiteout(%struct.vnode* %0, %struct.componentname* %1, %struct.thread* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.componentname, align 8
  %13 = alloca %struct.mount*, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.componentname* %1, %struct.componentname** %7, align 8
  store %struct.thread* %2, %struct.thread** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.componentname*, %struct.componentname** %7, align 8
  %18 = getelementptr inbounds %struct.componentname, %struct.componentname* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  br label %20

20:                                               ; preds = %16, %4
  %21 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %21, %struct.vnode** %11, align 8
  %22 = load %struct.vnode*, %struct.vnode** %6, align 8
  %23 = load %struct.componentname*, %struct.componentname** %7, align 8
  %24 = load %struct.thread*, %struct.thread** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = load i32, i32* @CREATE, align 4
  %29 = call i32 @unionfs_relookup(%struct.vnode* %22, %struct.vnode** %11, %struct.componentname* %23, %struct.componentname* %12, %struct.thread* %24, i8* %25, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %97

33:                                               ; preds = %20
  %34 = load %struct.vnode*, %struct.vnode** %11, align 8
  %35 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %36 = icmp ne %struct.vnode* %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @HASBUF, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load i32, i32* @namei_zone, align 4
  %45 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @uma_zfree(i32 %44, i32 %46)
  %48 = load i32, i32* @HASBUF, align 4
  %49 = xor i32 %48, -1
  %50 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %49
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %43, %37
  %54 = load %struct.vnode*, %struct.vnode** %6, align 8
  %55 = load %struct.vnode*, %struct.vnode** %11, align 8
  %56 = icmp eq %struct.vnode* %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.vnode*, %struct.vnode** %11, align 8
  %59 = call i32 @vrele(%struct.vnode* %58)
  br label %63

60:                                               ; preds = %53
  %61 = load %struct.vnode*, %struct.vnode** %11, align 8
  %62 = call i32 @vput(%struct.vnode* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* @EEXIST, align 4
  store i32 %64, i32* %5, align 4
  br label %97

65:                                               ; preds = %33
  %66 = load %struct.vnode*, %struct.vnode** %6, align 8
  %67 = load i32, i32* @V_WAIT, align 4
  %68 = load i32, i32* @PCATCH, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @vn_start_write(%struct.vnode* %66, %struct.mount** %13, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %79

73:                                               ; preds = %65
  %74 = load %struct.vnode*, %struct.vnode** %6, align 8
  %75 = load i32, i32* @CREATE, align 4
  %76 = call i32 @VOP_WHITEOUT(%struct.vnode* %74, %struct.componentname* %12, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load %struct.mount*, %struct.mount** %13, align 8
  %78 = call i32 @vn_finished_write(%struct.mount* %77)
  br label %79

79:                                               ; preds = %73, %72
  %80 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @HASBUF, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load i32, i32* @namei_zone, align 4
  %87 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @uma_zfree(i32 %86, i32 %88)
  %90 = load i32, i32* @HASBUF, align 4
  %91 = xor i32 %90, -1
  %92 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %91
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %85, %79
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %63, %31
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @unionfs_relookup(%struct.vnode*, %struct.vnode**, %struct.componentname*, %struct.componentname*, %struct.thread*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @uma_zfree(i32, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @VOP_WHITEOUT(%struct.vnode*, %struct.componentname*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
