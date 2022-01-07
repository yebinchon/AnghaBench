; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clsubs.c_ncl_getcookie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clsubs.c_ncl_getcookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsnode = type { i32 }
%struct.nfsdmap = type { i32, i32* }

@NFS_DIRBLKSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"nfs getcookie add at <= 0\00", align 1
@nfs_nullcookie = common dso_local global i32 0, align 4
@M_NFSDIROFF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ndm_list = common dso_local global i32 0, align 4
@NFSNUMCOOKIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ncl_getcookie(%struct.nfsnode* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfsnode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfsdmap*, align 8
  %9 = alloca %struct.nfsdmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.nfsnode* %0, %struct.nfsnode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %11, align 8
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @NFS_DIRBLKSIZ, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18, %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32* @nfs_nullcookie, i32** %4, align 8
  br label %126

27:                                               ; preds = %18
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %10, align 4
  %30 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %31 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %30, i32 0, i32 0
  %32 = call %struct.nfsdmap* @LIST_FIRST(i32* %31)
  store %struct.nfsdmap* %32, %struct.nfsdmap** %8, align 8
  %33 = load %struct.nfsdmap*, %struct.nfsdmap** %8, align 8
  %34 = icmp ne %struct.nfsdmap* %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32, i32* @M_NFSDIROFF, align 4
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = call %struct.nfsdmap* @malloc(i32 16, i32 %39, i32 %40)
  store %struct.nfsdmap* %41, %struct.nfsdmap** %8, align 8
  %42 = load %struct.nfsdmap*, %struct.nfsdmap** %8, align 8
  %43 = getelementptr inbounds %struct.nfsdmap, %struct.nfsdmap* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %45 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %44, i32 0, i32 0
  %46 = load %struct.nfsdmap*, %struct.nfsdmap** %8, align 8
  %47 = load i32, i32* @ndm_list, align 4
  %48 = call i32 @LIST_INSERT_HEAD(i32* %45, %struct.nfsdmap* %46, i32 %47)
  br label %50

49:                                               ; preds = %35
  br label %124

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %27
  br label %52

52:                                               ; preds = %100, %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @NFSNUMCOOKIES, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %101

56:                                               ; preds = %52
  %57 = load i32, i32* @NFSNUMCOOKIES, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load %struct.nfsdmap*, %struct.nfsdmap** %8, align 8
  %61 = load i32, i32* @ndm_list, align 4
  %62 = call %struct.nfsdmap* @LIST_NEXT(%struct.nfsdmap* %60, i32 %61)
  %63 = icmp ne %struct.nfsdmap* %62, null
  br i1 %63, label %64, label %84

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %64
  %68 = load %struct.nfsdmap*, %struct.nfsdmap** %8, align 8
  %69 = getelementptr inbounds %struct.nfsdmap, %struct.nfsdmap* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @NFSNUMCOOKIES, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.nfsdmap*, %struct.nfsdmap** %8, align 8
  %76 = getelementptr inbounds %struct.nfsdmap, %struct.nfsdmap* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sge i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %124

80:                                               ; preds = %73, %67, %64
  %81 = load %struct.nfsdmap*, %struct.nfsdmap** %8, align 8
  %82 = load i32, i32* @ndm_list, align 4
  %83 = call %struct.nfsdmap* @LIST_NEXT(%struct.nfsdmap* %81, i32 %82)
  store %struct.nfsdmap* %83, %struct.nfsdmap** %8, align 8
  br label %100

84:                                               ; preds = %56
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load i32, i32* @M_NFSDIROFF, align 4
  %89 = load i32, i32* @M_WAITOK, align 4
  %90 = call %struct.nfsdmap* @malloc(i32 16, i32 %88, i32 %89)
  store %struct.nfsdmap* %90, %struct.nfsdmap** %9, align 8
  %91 = load %struct.nfsdmap*, %struct.nfsdmap** %9, align 8
  %92 = getelementptr inbounds %struct.nfsdmap, %struct.nfsdmap* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.nfsdmap*, %struct.nfsdmap** %8, align 8
  %94 = load %struct.nfsdmap*, %struct.nfsdmap** %9, align 8
  %95 = load i32, i32* @ndm_list, align 4
  %96 = call i32 @LIST_INSERT_AFTER(%struct.nfsdmap* %93, %struct.nfsdmap* %94, i32 %95)
  %97 = load %struct.nfsdmap*, %struct.nfsdmap** %9, align 8
  store %struct.nfsdmap* %97, %struct.nfsdmap** %8, align 8
  br label %99

98:                                               ; preds = %84
  br label %124

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %80
  br label %52

101:                                              ; preds = %52
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.nfsdmap*, %struct.nfsdmap** %8, align 8
  %104 = getelementptr inbounds %struct.nfsdmap, %struct.nfsdmap* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sge i32 %102, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  %113 = load %struct.nfsdmap*, %struct.nfsdmap** %8, align 8
  %114 = getelementptr inbounds %struct.nfsdmap, %struct.nfsdmap* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  br label %116

115:                                              ; preds = %107
  br label %124

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %101
  %118 = load %struct.nfsdmap*, %struct.nfsdmap** %8, align 8
  %119 = getelementptr inbounds %struct.nfsdmap, %struct.nfsdmap* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32* %123, i32** %11, align 8
  br label %124

124:                                              ; preds = %117, %115, %98, %79, %49
  %125 = load i32*, i32** %11, align 8
  store i32* %125, i32** %4, align 8
  br label %126

126:                                              ; preds = %124, %21
  %127 = load i32*, i32** %4, align 8
  ret i32* %127
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.nfsdmap* @LIST_FIRST(i32*) #1

declare dso_local %struct.nfsdmap* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.nfsdmap*, i32) #1

declare dso_local %struct.nfsdmap* @LIST_NEXT(%struct.nfsdmap*, i32) #1

declare dso_local i32 @LIST_INSERT_AFTER(%struct.nfsdmap*, %struct.nfsdmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
