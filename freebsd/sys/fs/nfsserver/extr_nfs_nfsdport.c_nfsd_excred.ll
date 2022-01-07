; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsd_excred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsd_excred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.nfsexstuff = type { i32 }
%struct.ucred = type { i64, i32, i32, i32 }

@ND_GSS = common dso_local global i32 0, align 4
@MNT_EXPORTANON = common dso_local global i32 0, align 4
@NFSV4OP_SECINFO = common dso_local global i64 0, align 8
@NFSPROC_FSINFO = common dso_local global i64 0, align 8
@ND_NFSV4 = common dso_local global i32 0, align 4
@NFSERR_WRONGSEC = common dso_local global i32 0, align 4
@NFSERR_AUTHERR = common dso_local global i32 0, align 4
@AUTH_TOOWEAK = common dso_local global i32 0, align 4
@NFSERR_PROGNOTV4 = common dso_local global i32 0, align 4
@ND_AUTHNONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_excred(%struct.nfsrv_descript* %0, %struct.nfsexstuff* %1, %struct.ucred* %2) #0 {
  %4 = alloca %struct.nfsrv_descript*, align 8
  %5 = alloca %struct.nfsexstuff*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca i32, align 4
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %4, align 8
  store %struct.nfsexstuff* %1, %struct.nfsexstuff** %5, align 8
  store %struct.ucred* %2, %struct.ucred** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %9 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ND_GSS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* @MNT_EXPORTANON, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.nfsexstuff*, %struct.nfsexstuff** %5, align 8
  %18 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %14, %3
  %22 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %23 = load %struct.nfsexstuff*, %struct.nfsexstuff** %5, align 8
  %24 = call i64 @nfsvno_testexp(%struct.nfsrv_descript* %22, %struct.nfsexstuff* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %28 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NFSV4OP_SECINFO, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %34 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NFSPROC_FSINFO, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %40 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ND_NFSV4, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @NFSERR_WRONGSEC, align 4
  store i32 %46, i32* %7, align 4
  br label %51

47:                                               ; preds = %38
  %48 = load i32, i32* @NFSERR_AUTHERR, align 4
  %49 = load i32, i32* @AUTH_TOOWEAK, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %45
  br label %136

52:                                               ; preds = %32, %26, %21
  %53 = load %struct.nfsexstuff*, %struct.nfsexstuff** %5, align 8
  %54 = call i64 @NFSVNO_EXV4ONLY(%struct.nfsexstuff* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %58 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ND_NFSV4, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @NFSERR_PROGNOTV4, align 4
  store i32 %64, i32* %7, align 4
  br label %136

65:                                               ; preds = %56, %52
  %66 = load %struct.nfsexstuff*, %struct.nfsexstuff** %5, align 8
  %67 = call i64 @NFSVNO_EXPORTED(%struct.nfsexstuff* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %135

69:                                               ; preds = %65
  %70 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %71 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @ND_GSS, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %78 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %76, %69
  %84 = load %struct.nfsexstuff*, %struct.nfsexstuff** %5, align 8
  %85 = call i64 @NFSVNO_EXPORTANON(%struct.nfsexstuff* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %89 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ND_AUTHNONE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %87, %83, %76
  %95 = load %struct.ucred*, %struct.ucred** %6, align 8
  %96 = getelementptr inbounds %struct.ucred, %struct.ucred* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %99 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i64 %97, i64* %101, align 8
  %102 = load %struct.ucred*, %struct.ucred** %6, align 8
  %103 = getelementptr inbounds %struct.ucred, %struct.ucred* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %106 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %105, i32 0, i32 2
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 8
  %109 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %110 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load %struct.ucred*, %struct.ucred** %6, align 8
  %113 = getelementptr inbounds %struct.ucred, %struct.ucred* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ucred*, %struct.ucred** %6, align 8
  %116 = getelementptr inbounds %struct.ucred, %struct.ucred* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @crsetgroups(%struct.TYPE_4__* %111, i32 %114, i32 %117)
  br label %134

119:                                              ; preds = %87
  %120 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %121 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ND_GSS, align 4
  %124 = and i32 %122, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  %127 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %128 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = call %struct.TYPE_4__* @nfsrv_getgrpscred(%struct.TYPE_4__* %129)
  %131 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %132 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %131, i32 0, i32 2
  store %struct.TYPE_4__* %130, %struct.TYPE_4__** %132, align 8
  br label %133

133:                                              ; preds = %126, %119
  br label %134

134:                                              ; preds = %133, %94
  br label %135

135:                                              ; preds = %134, %65
  br label %136

136:                                              ; preds = %135, %63, %51
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %139 = call i32 @NFSEXITCODE2(i32 %137, %struct.nfsrv_descript* %138)
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local i64 @nfsvno_testexp(%struct.nfsrv_descript*, %struct.nfsexstuff*) #1

declare dso_local i64 @NFSVNO_EXV4ONLY(%struct.nfsexstuff*) #1

declare dso_local i64 @NFSVNO_EXPORTED(%struct.nfsexstuff*) #1

declare dso_local i64 @NFSVNO_EXPORTANON(%struct.nfsexstuff*) #1

declare dso_local i32 @crsetgroups(%struct.TYPE_4__*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @nfsrv_getgrpscred(%struct.TYPE_4__*) #1

declare dso_local i32 @NFSEXITCODE2(i32, %struct.nfsrv_descript*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
