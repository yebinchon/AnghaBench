; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_relookup_for_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_relookup_for_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32, i32, i32 }
%struct.thread = type { i32 }

@NULLVP = common dso_local global %struct.vnode* null, align 8
@DELETE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@HASBUF = common dso_local global i32 0, align 4
@namei_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unionfs_relookup_for_delete(%struct.vnode* %0, %struct.componentname* %1, %struct.thread* %2) #0 {
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
  %25 = load i32, i32* @DELETE, align 4
  %26 = call i32 @unionfs_relookup(%struct.vnode* %15, %struct.vnode** %10, %struct.componentname* %16, %struct.componentname* %11, %struct.thread* %17, i32 %20, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %82

31:                                               ; preds = %3
  %32 = load %struct.vnode*, %struct.vnode** %10, align 8
  %33 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %34 = icmp eq %struct.vnode* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @ENOENT, align 4
  store i32 %36, i32* %8, align 4
  br label %48

37:                                               ; preds = %31
  %38 = load %struct.vnode*, %struct.vnode** %9, align 8
  %39 = load %struct.vnode*, %struct.vnode** %10, align 8
  %40 = icmp eq %struct.vnode* %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.vnode*, %struct.vnode** %10, align 8
  %43 = call i32 @vrele(%struct.vnode* %42)
  br label %47

44:                                               ; preds = %37
  %45 = load %struct.vnode*, %struct.vnode** %10, align 8
  %46 = call i32 @vput(%struct.vnode* %45)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %35
  %49 = getelementptr inbounds %struct.componentname, %struct.componentname* %11, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HASBUF, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i32, i32* @namei_zone, align 4
  %56 = getelementptr inbounds %struct.componentname, %struct.componentname* %11, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @uma_zfree(i32 %55, i32 %57)
  %59 = load i32, i32* @HASBUF, align 4
  %60 = xor i32 %59, -1
  %61 = getelementptr inbounds %struct.componentname, %struct.componentname* %11, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %54, %48
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %64
  %68 = load %struct.componentname*, %struct.componentname** %6, align 8
  %69 = getelementptr inbounds %struct.componentname, %struct.componentname* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HASBUF, align 4
  %72 = and i32 %70, %71
  %73 = getelementptr inbounds %struct.componentname, %struct.componentname* %11, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  %76 = getelementptr inbounds %struct.componentname, %struct.componentname* %11, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.componentname*, %struct.componentname** %6, align 8
  %79 = getelementptr inbounds %struct.componentname, %struct.componentname* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %67, %64
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %29
  %83 = load i32, i32* %4, align 4
  ret i32 %83
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
