; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_sillyrename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_sillyrename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.componentname = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i16 }
%struct.sillyrename = type { i32, %struct.vnode*, i32, i32 }
%struct.nfsnode = type { %struct.sillyrename* }

@VDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"nfs: sillyrename dir\00", align 1
@M_NEWNFSREQ = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ticks = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c".nfs.%08x.%04x4.4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.vnode*, %struct.componentname*)* @nfs_sillyrename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_sillyrename(%struct.vnode* %0, %struct.vnode* %1, %struct.componentname* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca %struct.sillyrename*, align 8
  %9 = alloca %struct.nfsnode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.componentname* %2, %struct.componentname** %7, align 8
  %13 = load %struct.vnode*, %struct.vnode** %5, align 8
  %14 = call i32 @cache_purge(%struct.vnode* %13)
  %15 = load %struct.vnode*, %struct.vnode** %6, align 8
  %16 = call %struct.nfsnode* @VTONFS(%struct.vnode* %15)
  store %struct.nfsnode* %16, %struct.nfsnode** %9, align 8
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VDIR, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @M_NEWNFSREQ, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = call %struct.sillyrename* @malloc(i32 24, i32 %24, i32 %25)
  store %struct.sillyrename* %26, %struct.sillyrename** %8, align 8
  %27 = load %struct.componentname*, %struct.componentname** %7, align 8
  %28 = getelementptr inbounds %struct.componentname, %struct.componentname* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @crhold(i32 %29)
  %31 = load %struct.sillyrename*, %struct.sillyrename** %8, align 8
  %32 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.vnode*, %struct.vnode** %5, align 8
  %34 = load %struct.sillyrename*, %struct.sillyrename** %8, align 8
  %35 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %34, i32 0, i32 1
  store %struct.vnode* %33, %struct.vnode** %35, align 8
  %36 = load %struct.vnode*, %struct.vnode** %5, align 8
  %37 = call i32 @VREF(%struct.vnode* %36)
  %38 = load %struct.componentname*, %struct.componentname** %7, align 8
  %39 = getelementptr inbounds %struct.componentname, %struct.componentname* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i16, i16* %43, align 2
  store i16 %44, i16* %11, align 2
  %45 = load i64, i64* @ticks, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %72, %3
  %48 = load %struct.sillyrename*, %struct.sillyrename** %8, align 8
  %49 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i16, i16* %11, align 2
  %53 = call i32 @sprintf(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %51, i16 signext %52)
  %54 = load %struct.sillyrename*, %struct.sillyrename** %8, align 8
  %55 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.vnode*, %struct.vnode** %5, align 8
  %57 = load %struct.sillyrename*, %struct.sillyrename** %8, align 8
  %58 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sillyrename*, %struct.sillyrename** %8, align 8
  %61 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.sillyrename*, %struct.sillyrename** %8, align 8
  %64 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.componentname*, %struct.componentname** %7, align 8
  %67 = getelementptr inbounds %struct.componentname, %struct.componentname* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = call i32 @nfs_lookitup(%struct.vnode* %56, i32 %59, i32 %62, i32 %65, %struct.TYPE_4__* %68, %struct.nfsnode** null)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %47
  br label %75

72:                                               ; preds = %47
  %73 = load i32, i32* %12, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %47

75:                                               ; preds = %71
  %76 = load %struct.vnode*, %struct.vnode** %5, align 8
  %77 = load %struct.vnode*, %struct.vnode** %6, align 8
  %78 = load %struct.componentname*, %struct.componentname** %7, align 8
  %79 = load %struct.sillyrename*, %struct.sillyrename** %8, align 8
  %80 = call i32 @nfs_renameit(%struct.vnode* %76, %struct.vnode* %77, %struct.componentname* %78, %struct.sillyrename* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %102

84:                                               ; preds = %75
  %85 = load %struct.vnode*, %struct.vnode** %5, align 8
  %86 = load %struct.sillyrename*, %struct.sillyrename** %8, align 8
  %87 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sillyrename*, %struct.sillyrename** %8, align 8
  %90 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sillyrename*, %struct.sillyrename** %8, align 8
  %93 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.componentname*, %struct.componentname** %7, align 8
  %96 = getelementptr inbounds %struct.componentname, %struct.componentname* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = call i32 @nfs_lookitup(%struct.vnode* %85, i32 %88, i32 %91, i32 %94, %struct.TYPE_4__* %97, %struct.nfsnode** %9)
  store i32 %98, i32* %10, align 4
  %99 = load %struct.sillyrename*, %struct.sillyrename** %8, align 8
  %100 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %101 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %100, i32 0, i32 0
  store %struct.sillyrename* %99, %struct.sillyrename** %101, align 8
  store i32 0, i32* %4, align 4
  br label %115

102:                                              ; preds = %83
  %103 = load %struct.sillyrename*, %struct.sillyrename** %8, align 8
  %104 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %103, i32 0, i32 1
  %105 = load %struct.vnode*, %struct.vnode** %104, align 8
  %106 = call i32 @vrele(%struct.vnode* %105)
  %107 = load %struct.sillyrename*, %struct.sillyrename** %8, align 8
  %108 = getelementptr inbounds %struct.sillyrename, %struct.sillyrename* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @crfree(i32 %109)
  %111 = load %struct.sillyrename*, %struct.sillyrename** %8, align 8
  %112 = load i32, i32* @M_NEWNFSREQ, align 4
  %113 = call i32 @free(%struct.sillyrename* %111, i32 %112)
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %102, %84
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @cache_purge(%struct.vnode*) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.sillyrename* @malloc(i32, i32, i32) #1

declare dso_local i32 @crhold(i32) #1

declare dso_local i32 @VREF(%struct.vnode*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i16 signext) #1

declare dso_local i32 @nfs_lookitup(%struct.vnode*, i32, i32, i32, %struct.TYPE_4__*, %struct.nfsnode**) #1

declare dso_local i32 @nfs_renameit(%struct.vnode*, %struct.vnode*, %struct.componentname*, %struct.sillyrename*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @crfree(i32) #1

declare dso_local i32 @free(%struct.sillyrename*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
