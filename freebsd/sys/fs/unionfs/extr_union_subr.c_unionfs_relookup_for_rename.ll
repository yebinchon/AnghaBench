; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_relookup_for_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_relookup_for_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32, i32, i32 }
%struct.thread = type { i32 }

@NULLVP = common dso_local global %struct.vnode* null, align 8
@RENAME = common dso_local global i32 0, align 4
@HASBUF = common dso_local global i32 0, align 4
@namei_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unionfs_relookup_for_rename(%struct.vnode* %0, %struct.componentname* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.componentname, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.componentname* %1, %struct.componentname** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %12 = load %struct.vnode*, %struct.vnode** %5, align 8
  %13 = call %struct.vnode* @UNIONFSVPTOUPPERVP(%struct.vnode* %12)
  store %struct.vnode* %13, %struct.vnode** %9, align 8
  %14 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  store %struct.vnode* %14, %struct.vnode** %10, align 8
  %15 = load %struct.vnode*, %struct.vnode** %9, align 8
  %16 = load %struct.componentname*, %struct.componentname** %6, align 8
  %17 = load %struct.thread*, %struct.thread** %7, align 8
  %18 = load %struct.componentname*, %struct.componentname** %6, align 8
  %19 = getelementptr inbounds %struct.componentname, %struct.componentname* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.componentname*, %struct.componentname** %6, align 8
  %22 = getelementptr inbounds %struct.componentname, %struct.componentname* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strlen(i32 %23)
  %25 = load i32, i32* @RENAME, align 4
  %26 = call i32 @unionfs_relookup(%struct.vnode* %15, %struct.vnode** %10, %struct.componentname* %16, %struct.componentname* %11, %struct.thread* %17, i32 %20, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %80

31:                                               ; preds = %3
  %32 = load %struct.vnode*, %struct.vnode** %10, align 8
  %33 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %34 = icmp ne %struct.vnode* %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.vnode*, %struct.vnode** %9, align 8
  %37 = load %struct.vnode*, %struct.vnode** %10, align 8
  %38 = icmp eq %struct.vnode* %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.vnode*, %struct.vnode** %10, align 8
  %41 = call i32 @vrele(%struct.vnode* %40)
  br label %45

42:                                               ; preds = %35
  %43 = load %struct.vnode*, %struct.vnode** %10, align 8
  %44 = call i32 @vput(%struct.vnode* %43)
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %31
  %47 = getelementptr inbounds %struct.componentname, %struct.componentname* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HASBUF, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load i32, i32* @namei_zone, align 4
  %54 = getelementptr inbounds %struct.componentname, %struct.componentname* %11, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @uma_zfree(i32 %53, i32 %55)
  %57 = load i32, i32* @HASBUF, align 4
  %58 = xor i32 %57, -1
  %59 = getelementptr inbounds %struct.componentname, %struct.componentname* %11, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %52, %46
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = load %struct.componentname*, %struct.componentname** %6, align 8
  %67 = getelementptr inbounds %struct.componentname, %struct.componentname* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @HASBUF, align 4
  %70 = and i32 %68, %69
  %71 = getelementptr inbounds %struct.componentname, %struct.componentname* %11, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = getelementptr inbounds %struct.componentname, %struct.componentname* %11, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.componentname*, %struct.componentname** %6, align 8
  %77 = getelementptr inbounds %struct.componentname, %struct.componentname* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %65, %62
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %29
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.vnode* @UNIONFSVPTOUPPERVP(%struct.vnode*) #1

declare dso_local i32 @unionfs_relookup(%struct.vnode*, %struct.vnode**, %struct.componentname*, %struct.componentname*, %struct.thread*, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @uma_zfree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
