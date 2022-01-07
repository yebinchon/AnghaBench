; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_md_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_bootp_subr.c_md_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.nfs_args = type { i32 }
%struct.thread = type { i32 }
%struct.mbuf = type { i32 }

@NFSMNT_NFSV3 = common dso_local global i32 0, align 4
@NFSX_V3FHMAX = common dso_local global i32 0, align 4
@NFSX_V2FH = common dso_local global i32 0, align 4
@NFS_PROG = common dso_local global i32 0, align 4
@NFS_VER3 = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4
@AUTH_UNIX = common dso_local global i32 0, align 4
@RPCMNT_MOUNT = common dso_local global i32 0, align 4
@RPCMNT_VER1 = common dso_local global i32 0, align 4
@RPCMNT_VER3 = common dso_local global i32 0, align 4
@RPCPROG_MNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in*, i8*, i32*, i32*, %struct.nfs_args*, %struct.thread*)* @md_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_mount(%struct.sockaddr_in* %0, i8* %1, i32* %2, i32* %3, %struct.nfs_args* %4, %struct.thread* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nfs_args*, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.nfs_args* %4, %struct.nfs_args** %12, align 8
  store %struct.thread* %5, %struct.thread** %13, align 8
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %20 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 0
  %22 = load %struct.thread*, %struct.thread** %13, align 8
  %23 = call i32 @krpc_portmap(%struct.sockaddr_in* %19, i32 100005, i32 1, i32* %21, %struct.thread* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %7, align 4
  br label %142

28:                                               ; preds = %6
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = call %struct.mbuf* @xdr_string_encode(i8* %29, i32 %31)
  store %struct.mbuf* %32, %struct.mbuf** %14, align 8
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %34 = load %struct.thread*, %struct.thread** %13, align 8
  %35 = call i32 @krpc_call(%struct.sockaddr_in* %33, i32 100005, i32 1, i32 1, %struct.mbuf** %14, i32* null, %struct.thread* %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %7, align 4
  br label %142

40:                                               ; preds = %28
  %41 = call i64 @xdr_int_decode(%struct.mbuf** %14, i32* %15)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40
  br label %136

47:                                               ; preds = %43
  %48 = load %struct.nfs_args*, %struct.nfs_args** %12, align 8
  %49 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NFSMNT_NFSV3, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @xdr_int_decode(%struct.mbuf** %14, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NFSX_V3FHMAX, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %58, %54
  br label %136

68:                                               ; preds = %63
  br label %72

69:                                               ; preds = %47
  %70 = load i32, i32* @NFSX_V2FH, align 4
  %71 = load i32*, i32** %11, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %68
  %73 = load i32*, i32** %10, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @xdr_opaque_decode(%struct.mbuf** %14, i32* %73, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %136

79:                                               ; preds = %72
  %80 = load %struct.nfs_args*, %struct.nfs_args** %12, align 8
  %81 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NFSMNT_NFSV3, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %117

86:                                               ; preds = %79
  %87 = call i64 @xdr_int_decode(%struct.mbuf** %14, i32* %17)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %136

90:                                               ; preds = %86
  store i32 0, i32* %16, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %17, align 4
  %95 = icmp sgt i32 %94, 100
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %90
  br label %136

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %109, %97
  %99 = load i32, i32* %17, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = call i64 @xdr_int_decode(%struct.mbuf** %14, i32* %18)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %136

105:                                              ; preds = %101
  %106 = load i32, i32* %18, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 1, i32* %16, align 4
  br label %109

109:                                              ; preds = %108, %105
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %17, align 4
  br label %98

112:                                              ; preds = %98
  %113 = load i32, i32* %16, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %136

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %116, %79
  %118 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %119 = load i32, i32* @NFS_PROG, align 4
  %120 = load %struct.nfs_args*, %struct.nfs_args** %12, align 8
  %121 = getelementptr inbounds %struct.nfs_args, %struct.nfs_args* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @NFSMNT_NFSV3, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load i32, i32* @NFS_VER3, align 4
  br label %130

128:                                              ; preds = %117
  %129 = load i32, i32* @NFS_VER2, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  %132 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %133 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %132, i32 0, i32 0
  %134 = load %struct.thread*, %struct.thread** %13, align 8
  %135 = call i32 @krpc_portmap(%struct.sockaddr_in* %118, i32 %119, i32 %131, i32* %133, %struct.thread* %134)
  store i32 %135, i32* %15, align 4
  br label %138

136:                                              ; preds = %115, %104, %96, %89, %78, %67, %46
  %137 = load i32, i32* @EBADRPC, align 4
  store i32 %137, i32* %15, align 4
  br label %138

138:                                              ; preds = %136, %130
  %139 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %140 = call i32 @m_freem(%struct.mbuf* %139)
  %141 = load i32, i32* %15, align 4
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %138, %38, %26
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local i32 @krpc_portmap(%struct.sockaddr_in*, i32, i32, i32*, %struct.thread*) #1

declare dso_local %struct.mbuf* @xdr_string_encode(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @krpc_call(%struct.sockaddr_in*, i32, i32, i32, %struct.mbuf**, i32*, %struct.thread*) #1

declare dso_local i64 @xdr_int_decode(%struct.mbuf**, i32*) #1

declare dso_local i64 @xdr_opaque_decode(%struct.mbuf**, i32*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
