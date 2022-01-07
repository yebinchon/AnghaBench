; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_createdevids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_createdevids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.nfsd_nfsd_args = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.nfsdevice = type { i32 }

@nfsrv_maxpnfsmirror = common dso_local global i32 0, align 4
@nfsrv_devidcnt = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@nfsrv_faildscnt = common dso_local global i32 0, align 4
@nfslayouthash = common dso_local global %struct.TYPE_3__* null, align 8
@nfsrv_layouthighwater = common dso_local global i32 0, align 4
@nfsrv_layouthashsize = common dso_local global i32 0, align 4
@M_NFSDSESSION = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"nfslm\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsrv_createdevids(%struct.nfsd_nfsd_args* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd_nfsd_args*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsdevice*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nfsd_nfsd_args* %0, %struct.nfsd_nfsd_args** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %14 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %17 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %20 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  %22 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %23 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %26 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* @nfsrv_maxpnfsmirror, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %2
  %31 = load i8*, i8** %8, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %9, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %10, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33, %30, %2
  store i32 0, i32* %3, align 4
  br label %170

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %97, %40
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %44 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %47 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = icmp ult i8* %42, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %41
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %55 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %58 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %56, i64 %60
  %62 = icmp ult i8* %53, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %52
  %64 = load i8*, i8** %9, align 8
  %65 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %66 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %69 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  %73 = icmp ult i8* %64, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %63
  %75 = load i8*, i8** %10, align 8
  %76 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %77 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.nfsd_nfsd_args*, %struct.nfsd_nfsd_args** %4, align 8
  %80 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  %84 = icmp ult i8* %75, %83
  br label %85

85:                                               ; preds = %74, %63, %52, %41
  %86 = phi i1 [ false, %63 ], [ false, %52 ], [ false, %41 ], [ %84, %74 ]
  br i1 %86, label %87, label %122

87:                                               ; preds = %85
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @nfsrv_setdsserver(i8* %88, i8* %89, i32* %90, %struct.nfsdevice** %6)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = call i32 (...) @nfsrv_freealldevids()
  store i32 0, i32* @nfsrv_devidcnt, align 4
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %3, align 4
  br label %170

97:                                               ; preds = %87
  %98 = load %struct.nfsdevice*, %struct.nfsdevice** %6, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @nfsrv_allocdevid(%struct.nfsdevice* %98, i8* %99, i8* %100)
  %102 = load i8*, i8** %7, align 8
  %103 = call i64 @strlen(i8* %102)
  %104 = add nsw i64 %103, 1
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  store i8* %106, i8** %7, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = call i64 @strlen(i8* %107)
  %109 = add nsw i64 %108, 1
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 %109
  store i8* %111, i8** %8, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = call i64 @strlen(i8* %112)
  %114 = add nsw i64 %113, 1
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 %114
  store i8* %116, i8** %9, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = call i64 @strlen(i8* %117)
  %119 = add nsw i64 %118, 1
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 %119
  store i8* %121, i8** %10, align 8
  br label %41

122:                                              ; preds = %85
  %123 = load i32, i32* @nfsrv_devidcnt, align 4
  %124 = load i32, i32* @nfsrv_maxpnfsmirror, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = call i32 (...) @nfsrv_freealldevids()
  store i32 0, i32* @nfsrv_devidcnt, align 4
  store i32 1, i32* @nfsrv_maxpnfsmirror, align 4
  %128 = load i32, i32* @ENXIO, align 4
  store i32 %128, i32* %3, align 4
  br label %170

129:                                              ; preds = %122
  %130 = load i32, i32* @nfsrv_maxpnfsmirror, align 4
  %131 = sub nsw i32 %130, 1
  store i32 %131, i32* @nfsrv_faildscnt, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nfslayouthash, align 8
  %133 = icmp eq %struct.TYPE_3__* %132, null
  br i1 %133, label %134, label %169

134:                                              ; preds = %129
  %135 = load i32, i32* @nfsrv_layouthighwater, align 4
  %136 = sdiv i32 %135, 100
  store i32 %136, i32* @nfsrv_layouthashsize, align 4
  %137 = load i32, i32* @nfsrv_layouthashsize, align 4
  %138 = icmp slt i32 %137, 100
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 100, i32* @nfsrv_layouthashsize, align 4
  br label %140

140:                                              ; preds = %139, %134
  %141 = load i32, i32* @nfsrv_layouthashsize, align 4
  %142 = load i32, i32* @M_NFSDSESSION, align 4
  %143 = load i32, i32* @M_WAITOK, align 4
  %144 = load i32, i32* @M_ZERO, align 4
  %145 = or i32 %143, %144
  %146 = call %struct.TYPE_3__* @mallocarray(i32 %141, i32 4, i32 %142, i32 %145)
  store %struct.TYPE_3__* %146, %struct.TYPE_3__** @nfslayouthash, align 8
  store i32 0, i32* %12, align 4
  br label %147

147:                                              ; preds = %165, %140
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @nfsrv_layouthashsize, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %168

151:                                              ; preds = %147
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nfslayouthash, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* @MTX_DEF, align 4
  %158 = call i32 @mtx_init(i32* %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 %157)
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nfslayouthash, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = call i32 @TAILQ_INIT(i32* %163)
  br label %165

165:                                              ; preds = %151
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %147

168:                                              ; preds = %147
  br label %169

169:                                              ; preds = %168, %129
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %126, %94, %39
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @nfsrv_setdsserver(i8*, i8*, i32*, %struct.nfsdevice**) #1

declare dso_local i32 @nfsrv_freealldevids(...) #1

declare dso_local i32 @nfsrv_allocdevid(%struct.nfsdevice*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_3__* @mallocarray(i32, i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
