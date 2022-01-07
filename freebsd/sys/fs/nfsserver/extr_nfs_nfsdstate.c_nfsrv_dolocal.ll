; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_dolocal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_dolocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfslockfile = type { i32 }
%struct.nfslockconflict = type { i32, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.nfsrollback = type { i32, i8*, i8* }

@NFSLCK_WRITE = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@NFSLCK_READ = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@NFS64BITSSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@M_NFSDROLLBACK = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@rlck_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.nfslockfile*, i32, i32, i8*, i8*, %struct.nfslockconflict*, i32*)* @nfsrv_dolocal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_dolocal(i32 %0, %struct.nfslockfile* %1, i32 %2, i32 %3, i8* %4, i8* %5, %struct.nfslockconflict* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfslockfile*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.nfslockconflict*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.nfsrollback*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.nfslockfile* %1, %struct.nfslockfile** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.nfslockconflict* %6, %struct.nfslockconflict** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %18, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @NFSLCK_WRITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %8
  %26 = load i32, i32* @F_WRLCK, align 4
  store i32 %26, i32* %19, align 4
  br label %37

27:                                               ; preds = %8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @NFSLCK_READ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @F_RDLCK, align 4
  store i32 %33, i32* %19, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @F_UNLCK, align 4
  store i32 %35, i32* %19, align 4
  br label %36

36:                                               ; preds = %34, %32
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @NFSLCK_WRITE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @F_WRLCK, align 4
  store i32 %43, i32* %20, align 4
  br label %54

44:                                               ; preds = %37
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @NFSLCK_READ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @F_RDLCK, align 4
  store i32 %50, i32* %20, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @F_UNLCK, align 4
  store i32 %52, i32* %20, align 4
  br label %53

53:                                               ; preds = %51, %49
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %20, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* @F_WRLCK, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* @F_RDLCK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %54
  br label %133

67:                                               ; preds = %62, %58
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load i8*, i8** %13, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = call i32 @nfsvno_advlock(i32 %68, i32 %69, i8* %70, i8* %71, i32* %72)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %109

76:                                               ; preds = %67
  %77 = load %struct.nfslockconflict*, %struct.nfslockconflict** %15, align 8
  %78 = icmp ne %struct.nfslockconflict* %77, null
  br i1 %78, label %79, label %104

79:                                               ; preds = %76
  %80 = load %struct.nfslockconflict*, %struct.nfslockconflict** %15, align 8
  %81 = getelementptr inbounds %struct.nfslockconflict, %struct.nfslockconflict* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.nfslockconflict*, %struct.nfslockconflict** %15, align 8
  %86 = getelementptr inbounds %struct.nfslockconflict, %struct.nfslockconflict* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.nfslockconflict*, %struct.nfslockconflict** %15, align 8
  %91 = getelementptr inbounds %struct.nfslockconflict, %struct.nfslockconflict* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @NFS64BITSSET, align 4
  %93 = load %struct.nfslockconflict*, %struct.nfslockconflict** %15, align 8
  %94 = getelementptr inbounds %struct.nfslockconflict, %struct.nfslockconflict* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @NFSLCK_WRITE, align 4
  %96 = load %struct.nfslockconflict*, %struct.nfslockconflict** %15, align 8
  %97 = getelementptr inbounds %struct.nfslockconflict, %struct.nfslockconflict* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.nfslockconflict*, %struct.nfslockconflict** %15, align 8
  %99 = getelementptr inbounds %struct.nfslockconflict, %struct.nfslockconflict* %98, i32 0, i32 1
  store i32 5, i32* %99, align 4
  %100 = load %struct.nfslockconflict*, %struct.nfslockconflict** %15, align 8
  %101 = getelementptr inbounds %struct.nfslockconflict, %struct.nfslockconflict* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @NFSBCOPY(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %102, i32 5)
  br label %104

104:                                              ; preds = %79, %76
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.nfslockfile*, %struct.nfslockfile** %10, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = call i32 @nfsrv_locallock_rollback(i32 %105, %struct.nfslockfile* %106, i32* %107)
  br label %132

109:                                              ; preds = %67
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* @F_UNLCK, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %109
  %114 = load i32, i32* @M_NFSDROLLBACK, align 4
  %115 = load i32, i32* @M_WAITOK, align 4
  %116 = call %struct.nfsrollback* @malloc(i32 24, i32 %114, i32 %115)
  store %struct.nfsrollback* %116, %struct.nfsrollback** %17, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = load %struct.nfsrollback*, %struct.nfsrollback** %17, align 8
  %119 = getelementptr inbounds %struct.nfsrollback, %struct.nfsrollback* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** %14, align 8
  %121 = load %struct.nfsrollback*, %struct.nfsrollback** %17, align 8
  %122 = getelementptr inbounds %struct.nfsrollback, %struct.nfsrollback* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %20, align 4
  %124 = load %struct.nfsrollback*, %struct.nfsrollback** %17, align 8
  %125 = getelementptr inbounds %struct.nfsrollback, %struct.nfsrollback* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.nfslockfile*, %struct.nfslockfile** %10, align 8
  %127 = getelementptr inbounds %struct.nfslockfile, %struct.nfslockfile* %126, i32 0, i32 0
  %128 = load %struct.nfsrollback*, %struct.nfsrollback** %17, align 8
  %129 = load i32, i32* @rlck_list, align 4
  %130 = call i32 @LIST_INSERT_HEAD(i32* %127, %struct.nfsrollback* %128, i32 %129)
  br label %131

131:                                              ; preds = %113, %109
  br label %132

132:                                              ; preds = %131, %104
  br label %133

133:                                              ; preds = %132, %66
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @NFSEXITCODE(i32 %134)
  %136 = load i32, i32* %18, align 4
  ret i32 %136
}

declare dso_local i32 @nfsvno_advlock(i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @NFSBCOPY(i8*, i32, i32) #1

declare dso_local i32 @nfsrv_locallock_rollback(i32, %struct.nfslockfile*, i32*) #1

declare dso_local %struct.nfsrollback* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.nfsrollback*, i32) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
