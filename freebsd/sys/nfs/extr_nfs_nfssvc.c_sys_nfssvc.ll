; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_nfssvc.c_sys_nfssvc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_nfssvc.c_sys_nfssvc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.nfssvc_args = type { i32 }

@Giant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"nfssvc(): called with Giant\00", align 1
@NFSSVC_GETSTATS = common dso_local global i32 0, align 4
@PRIV_NFS_DAEMON = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFSSVC_ADDSOCK = common dso_local global i32 0, align 4
@NFSSVC_OLDNFSD = common dso_local global i32 0, align 4
@NFSSVC_NFSD = common dso_local global i32 0, align 4
@NFSSVC_CBADDSOCK = common dso_local global i32 0, align 4
@NFSSVC_NFSCBD = common dso_local global i32 0, align 4
@NFSSVC_DUMPMNTOPTS = common dso_local global i32 0, align 4
@NFSSVC_FORCEDISM = common dso_local global i32 0, align 4
@NFSSVC_IDNAME = common dso_local global i32 0, align 4
@NFSSVC_GSSDADDPORT = common dso_local global i32 0, align 4
@NFSSVC_GSSDADDFIRST = common dso_local global i32 0, align 4
@NFSSVC_GSSDDELETEALL = common dso_local global i32 0, align 4
@NFSSVC_NFSUSERDPORT = common dso_local global i32 0, align 4
@NFSSVC_NFSUSERDDELPORT = common dso_local global i32 0, align 4
@NFSSVC_NFSDNFSD = common dso_local global i32 0, align 4
@NFSSVC_NFSDADDSOCK = common dso_local global i32 0, align 4
@NFSSVC_PUBLICFH = common dso_local global i32 0, align 4
@NFSSVC_V4ROOTEXPORT = common dso_local global i32 0, align 4
@NFSSVC_NOPUBLICFH = common dso_local global i32 0, align 4
@NFSSVC_STABLERESTART = common dso_local global i32 0, align 4
@NFSSVC_ADMINREVOKE = common dso_local global i32 0, align 4
@NFSSVC_DUMPCLIENTS = common dso_local global i32 0, align 4
@NFSSVC_DUMPLOCKS = common dso_local global i32 0, align 4
@NFSSVC_BACKUPSTABLE = common dso_local global i32 0, align 4
@NFSSVC_SUSPENDNFSD = common dso_local global i32 0, align 4
@NFSSVC_RESUMENFSD = common dso_local global i32 0, align 4
@NFSSVC_PNFSDS = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_nfssvc(%struct.thread* %0, %struct.nfssvc_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.nfssvc_args*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.nfssvc_args* %1, %struct.nfssvc_args** %5, align 8
  %7 = call i32 @mtx_owned(i32* @Giant)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.nfssvc_args*, %struct.nfssvc_args** %5, align 8
  %13 = getelementptr inbounds %struct.nfssvc_args, %struct.nfssvc_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @AUDIT_ARG_CMD(i32 %14)
  %16 = load %struct.nfssvc_args*, %struct.nfssvc_args** %5, align 8
  %17 = getelementptr inbounds %struct.nfssvc_args, %struct.nfssvc_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NFSSVC_GETSTATS, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = load i32, i32* @PRIV_NFS_DAEMON, align 4
  %26 = call i32 @priv_check(%struct.thread* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %137

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.nfssvc_args*, %struct.nfssvc_args** %5, align 8
  %35 = getelementptr inbounds %struct.nfssvc_args, %struct.nfssvc_args* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NFSSVC_ADDSOCK, align 4
  %38 = load i32, i32* @NFSSVC_OLDNFSD, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @NFSSVC_NFSD, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %36, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load %struct.thread*, %struct.thread** %4, align 8
  %46 = load %struct.nfssvc_args*, %struct.nfssvc_args** %5, align 8
  %47 = call i32 @nfsd_call_nfsserver(%struct.thread* %45, %struct.nfssvc_args* %46)
  store i32 %47, i32* %6, align 4
  br label %126

48:                                               ; preds = %32
  %49 = load %struct.nfssvc_args*, %struct.nfssvc_args** %5, align 8
  %50 = getelementptr inbounds %struct.nfssvc_args, %struct.nfssvc_args* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NFSSVC_CBADDSOCK, align 4
  %53 = load i32, i32* @NFSSVC_NFSCBD, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @NFSSVC_DUMPMNTOPTS, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @NFSSVC_FORCEDISM, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %51, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load %struct.thread*, %struct.thread** %4, align 8
  %63 = load %struct.nfssvc_args*, %struct.nfssvc_args** %5, align 8
  %64 = call i32 @nfsd_call_nfscl(%struct.thread* %62, %struct.nfssvc_args* %63)
  store i32 %64, i32* %6, align 4
  br label %125

65:                                               ; preds = %48
  %66 = load %struct.nfssvc_args*, %struct.nfssvc_args** %5, align 8
  %67 = getelementptr inbounds %struct.nfssvc_args, %struct.nfssvc_args* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NFSSVC_IDNAME, align 4
  %70 = load i32, i32* @NFSSVC_GETSTATS, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @NFSSVC_GSSDADDPORT, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @NFSSVC_GSSDADDFIRST, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @NFSSVC_GSSDDELETEALL, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @NFSSVC_NFSUSERDPORT, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @NFSSVC_NFSUSERDDELPORT, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %68, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %65
  %85 = load %struct.thread*, %struct.thread** %4, align 8
  %86 = load %struct.nfssvc_args*, %struct.nfssvc_args** %5, align 8
  %87 = call i32 @nfsd_call_nfscommon(%struct.thread* %85, %struct.nfssvc_args* %86)
  store i32 %87, i32* %6, align 4
  br label %124

88:                                               ; preds = %65
  %89 = load %struct.nfssvc_args*, %struct.nfssvc_args** %5, align 8
  %90 = getelementptr inbounds %struct.nfssvc_args, %struct.nfssvc_args* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NFSSVC_NFSDNFSD, align 4
  %93 = load i32, i32* @NFSSVC_NFSDADDSOCK, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @NFSSVC_PUBLICFH, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @NFSSVC_V4ROOTEXPORT, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @NFSSVC_NOPUBLICFH, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @NFSSVC_STABLERESTART, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @NFSSVC_ADMINREVOKE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @NFSSVC_DUMPCLIENTS, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @NFSSVC_DUMPLOCKS, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @NFSSVC_BACKUPSTABLE, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @NFSSVC_SUSPENDNFSD, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @NFSSVC_RESUMENFSD, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @NFSSVC_PNFSDS, align 4
  %116 = or i32 %114, %115
  %117 = and i32 %91, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %88
  %120 = load %struct.thread*, %struct.thread** %4, align 8
  %121 = load %struct.nfssvc_args*, %struct.nfssvc_args** %5, align 8
  %122 = call i32 @nfsd_call_nfsd(%struct.thread* %120, %struct.nfssvc_args* %121)
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %119, %88
  br label %124

124:                                              ; preds = %123, %84
  br label %125

125:                                              ; preds = %124, %61
  br label %126

126:                                              ; preds = %125, %44
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @EINTR, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @ERESTART, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130, %126
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %134, %130
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %29
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @AUDIT_ARG_CMD(i32) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @nfsd_call_nfsserver(%struct.thread*, %struct.nfssvc_args*) #1

declare dso_local i32 @nfsd_call_nfscl(%struct.thread*, %struct.nfssvc_args*) #1

declare dso_local i32 @nfsd_call_nfscommon(%struct.thread*, %struct.nfssvc_args*) #1

declare dso_local i32 @nfsd_call_nfsd(%struct.thread*, %struct.nfssvc_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
