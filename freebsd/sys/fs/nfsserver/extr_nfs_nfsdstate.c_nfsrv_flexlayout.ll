; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_flexlayout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_flexlayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfslayout = type { i32, i64, i64, i32, %struct.TYPE_3__, i8*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfsrv_descript = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@M_NFSDSTATE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@NFSLAYOUT_FLEXFILE = common dso_local global i32 0, align 4
@NFSLAYOUTIOMODE_RW = common dso_local global i32 0, align 4
@NFSLAY_RW = common dso_local global i32 0, align 4
@NFSLAY_READ = common dso_local global i32 0, align 4
@NFSX_V4DEVICEID = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@NFSX_V4PNFSFH = common dso_local global i32 0, align 4
@nfsrv_flexlinuxhack = common dso_local global i64 0, align 8
@FLEX_UID0 = common dso_local global i8* null, align 8
@FLEX_OWNERID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfslayout* (%struct.nfsrv_descript*, i32, i32, i8*, i8*, i8*, i32)* @nfsrv_flexlayout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfslayout* @nfsrv_flexlayout(%struct.nfsrv_descript* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.nfsrv_descript*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca %struct.nfslayout*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i64 @NFSX_V4FLEXLAYOUT(i32 %19)
  %21 = add i64 48, %20
  %22 = load i32, i32* @M_NFSDSTATE, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.nfslayout* @malloc(i64 %21, i32 %22, i32 %25)
  store %struct.nfslayout* %26, %struct.nfslayout** %16, align 8
  %27 = load i32, i32* @NFSLAYOUT_FLEXFILE, align 4
  %28 = load %struct.nfslayout*, %struct.nfslayout** %16, align 8
  %29 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @NFSLAYOUTIOMODE_RW, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %7
  %34 = load i32, i32* @NFSLAY_RW, align 4
  %35 = load %struct.nfslayout*, %struct.nfslayout** %16, align 8
  %36 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  br label %41

37:                                               ; preds = %7
  %38 = load i32, i32* @NFSLAY_READ, align 4
  %39 = load %struct.nfslayout*, %struct.nfslayout** %16, align 8
  %40 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.nfslayout*, %struct.nfslayout** %16, align 8
  %44 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %43, i32 0, i32 5
  %45 = call i32 @NFSBCOPY(i8* %42, i8** %44, i32 1)
  %46 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %8, align 8
  %47 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nfslayout*, %struct.nfslayout** %16, align 8
  %51 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.nfslayout*, %struct.nfslayout** %16, align 8
  %55 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.nfslayout*, %struct.nfslayout** %16, align 8
  %58 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.nfslayout*, %struct.nfslayout** %16, align 8
  %60 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8**
  store i8** %62, i8*** %15, align 8
  store i64 0, i64* %17, align 8
  %63 = load i64, i64* %17, align 8
  %64 = load i8**, i8*** %15, align 8
  %65 = call i32 @txdr_hyper(i64 %63, i8** %64)
  %66 = load i8**, i8*** %15, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 2
  store i8** %67, i8*** %15, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i8* @txdr_unsigned(i32 %68)
  %70 = load i8**, i8*** %15, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %71, i8*** %15, align 8
  store i8* %69, i8** %70, align 8
  store i32 0, i32* %18, align 4
  br label %72

72:                                               ; preds = %173, %41
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %176

76:                                               ; preds = %72
  %77 = call i8* @txdr_unsigned(i32 1)
  %78 = load i8**, i8*** %15, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i32 1
  store i8** %79, i8*** %15, align 8
  store i8* %77, i8** %78, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i8**, i8*** %15, align 8
  %82 = load i32, i32* @NFSX_V4DEVICEID, align 4
  %83 = call i32 @NFSBCOPY(i8* %80, i8** %81, i32 %82)
  %84 = load i32, i32* @NFSX_V4DEVICEID, align 4
  %85 = load i32, i32* @NFSX_UNSIGNED, align 4
  %86 = sdiv i32 %84, %85
  %87 = load i8**, i8*** %15, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8*, i8** %87, i64 %88
  store i8** %89, i8*** %15, align 8
  %90 = load i32, i32* @NFSX_V4DEVICEID, align 4
  %91 = load i8*, i8** %13, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %13, align 8
  %94 = call i8* @txdr_unsigned(i32 1)
  %95 = load i8**, i8*** %15, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i32 1
  store i8** %96, i8*** %15, align 8
  store i8* %94, i8** %95, align 8
  %97 = load i8**, i8*** %15, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %15, align 8
  store i8* null, i8** %97, align 8
  %99 = load i8**, i8*** %15, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i32 1
  store i8** %100, i8*** %15, align 8
  store i8* inttoptr (i64 1431655765 to i8*), i8** %99, align 8
  %101 = load i8**, i8*** %15, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i32 1
  store i8** %102, i8*** %15, align 8
  store i8* inttoptr (i64 1431655765 to i8*), i8** %101, align 8
  %103 = load i8**, i8*** %15, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i32 1
  store i8** %104, i8*** %15, align 8
  store i8* inttoptr (i64 1431655765 to i8*), i8** %103, align 8
  %105 = call i8* @txdr_unsigned(i32 1)
  %106 = load i8**, i8*** %15, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i32 1
  store i8** %107, i8*** %15, align 8
  store i8* %105, i8** %106, align 8
  %108 = load i32, i32* @NFSX_V4PNFSFH, align 4
  %109 = call i8* @txdr_unsigned(i32 %108)
  %110 = load i8**, i8*** %15, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i32 1
  store i8** %111, i8*** %15, align 8
  store i8* %109, i8** %110, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = load i8**, i8*** %15, align 8
  %114 = call i32 @NFSBCOPY(i8* %112, i8** %113, i32 1)
  %115 = load i32, i32* @NFSX_V4PNFSFH, align 4
  %116 = call i32 @NFSM_RNDUP(i32 %115)
  %117 = load i32, i32* @NFSX_UNSIGNED, align 4
  %118 = sdiv i32 %116, %117
  %119 = load i8**, i8*** %15, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8*, i8** %119, i64 %120
  store i8** %121, i8*** %15, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %12, align 8
  %124 = load i64, i64* @nfsrv_flexlinuxhack, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %76
  %127 = load i8*, i8** @FLEX_UID0, align 8
  %128 = call i32 @strlen(i8* %127)
  %129 = call i8* @txdr_unsigned(i32 %128)
  %130 = load i8**, i8*** %15, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i32 1
  store i8** %131, i8*** %15, align 8
  store i8* %129, i8** %130, align 8
  %132 = load i8**, i8*** %15, align 8
  store i8* null, i8** %132, align 8
  %133 = load i8*, i8** @FLEX_UID0, align 8
  %134 = load i8**, i8*** %15, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i32 1
  store i8** %135, i8*** %15, align 8
  %136 = load i8*, i8** @FLEX_UID0, align 8
  %137 = call i32 @strlen(i8* %136)
  %138 = call i32 @NFSBCOPY(i8* %133, i8** %134, i32 %137)
  %139 = load i8*, i8** @FLEX_UID0, align 8
  %140 = call i32 @strlen(i8* %139)
  %141 = call i8* @txdr_unsigned(i32 %140)
  %142 = load i8**, i8*** %15, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i32 1
  store i8** %143, i8*** %15, align 8
  store i8* %141, i8** %142, align 8
  %144 = load i8**, i8*** %15, align 8
  store i8* null, i8** %144, align 8
  %145 = load i8*, i8** @FLEX_UID0, align 8
  %146 = load i8**, i8*** %15, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i32 1
  store i8** %147, i8*** %15, align 8
  %148 = load i8*, i8** @FLEX_UID0, align 8
  %149 = call i32 @strlen(i8* %148)
  %150 = call i32 @NFSBCOPY(i8* %145, i8** %146, i32 %149)
  br label %172

151:                                              ; preds = %76
  %152 = load i8*, i8** @FLEX_OWNERID, align 8
  %153 = call i32 @strlen(i8* %152)
  %154 = call i8* @txdr_unsigned(i32 %153)
  %155 = load i8**, i8*** %15, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i32 1
  store i8** %156, i8*** %15, align 8
  store i8* %154, i8** %155, align 8
  %157 = load i8*, i8** @FLEX_OWNERID, align 8
  %158 = load i8**, i8*** %15, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i32 1
  store i8** %159, i8*** %15, align 8
  %160 = load i32, i32* @NFSX_UNSIGNED, align 4
  %161 = call i32 @NFSBCOPY(i8* %157, i8** %158, i32 %160)
  %162 = load i8*, i8** @FLEX_OWNERID, align 8
  %163 = call i32 @strlen(i8* %162)
  %164 = call i8* @txdr_unsigned(i32 %163)
  %165 = load i8**, i8*** %15, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i32 1
  store i8** %166, i8*** %15, align 8
  store i8* %164, i8** %165, align 8
  %167 = load i8*, i8** @FLEX_OWNERID, align 8
  %168 = load i8**, i8*** %15, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i32 1
  store i8** %169, i8*** %15, align 8
  %170 = load i32, i32* @NFSX_UNSIGNED, align 4
  %171 = call i32 @NFSBCOPY(i8* %167, i8** %168, i32 %170)
  br label %172

172:                                              ; preds = %151, %126
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %18, align 4
  br label %72

176:                                              ; preds = %72
  %177 = call i8* @txdr_unsigned(i32 0)
  %178 = load i8**, i8*** %15, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i32 1
  store i8** %179, i8*** %15, align 8
  store i8* %177, i8** %178, align 8
  %180 = call i8* @txdr_unsigned(i32 60)
  %181 = load i8**, i8*** %15, align 8
  store i8* %180, i8** %181, align 8
  %182 = load i32, i32* %10, align 4
  %183 = call i64 @NFSX_V4FLEXLAYOUT(i32 %182)
  %184 = load %struct.nfslayout*, %struct.nfslayout** %16, align 8
  %185 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  %186 = load %struct.nfslayout*, %struct.nfslayout** %16, align 8
  ret %struct.nfslayout* %186
}

declare dso_local %struct.nfslayout* @malloc(i64, i32, i32) #1

declare dso_local i64 @NFSX_V4FLEXLAYOUT(i32) #1

declare dso_local i32 @NFSBCOPY(i8*, i8**, i32) #1

declare dso_local i32 @txdr_hyper(i64, i8**) #1

declare dso_local i8* @txdr_unsigned(i32) #1

declare dso_local i32 @NFSM_RNDUP(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
