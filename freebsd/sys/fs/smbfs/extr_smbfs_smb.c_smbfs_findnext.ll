; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_findnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_findnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbfs_fctx = type { i32, i32, i8*, %struct.TYPE_6__*, %struct.TYPE_5__, i32, %struct.smb_cred* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.smb_cred = type { i32 }

@SMBFS_RDD_USESEARCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_findnext(%struct.smbfs_fctx* %0, i32 %1, %struct.smb_cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smbfs_fctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_cred*, align 8
  %8 = alloca i32, align 4
  store %struct.smbfs_fctx* %0, %struct.smbfs_fctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.smb_cred* %2, %struct.smb_cred** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1000000, i32* %6, align 4
  br label %19

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 %16, 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %15, %12
  br label %19

19:                                               ; preds = %18, %11
  %20 = load %struct.smb_cred*, %struct.smb_cred** %7, align 8
  %21 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %22 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %21, i32 0, i32 6
  store %struct.smb_cred* %20, %struct.smb_cred** %22, align 8
  br label %23

23:                                               ; preds = %112, %76, %19
  %24 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %25 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SMBFS_RDD_USESEARCH, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @smbfs_findnextLM1(%struct.smbfs_fctx* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %23
  %35 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @smbfs_findnextLM2(%struct.smbfs_fctx* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %146

43:                                               ; preds = %38
  %44 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %45 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SSTOVC(i32 %46)
  %48 = call i64 @SMB_UNICODE_STRINGS(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %43
  %51 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %52 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %57 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = bitcast i8* %58 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @htole16(i32 46)
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %76, label %63

63:                                               ; preds = %55, %50
  %64 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %65 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %70 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = bitcast i8* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @htole32(i32 3014702)
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68, %55
  br label %23

77:                                               ; preds = %68, %63
  br label %114

78:                                               ; preds = %43
  %79 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %80 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %85 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 46
  br i1 %90, label %112, label %91

91:                                               ; preds = %83, %78
  %92 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %93 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %113

96:                                               ; preds = %91
  %97 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %98 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 46
  br i1 %103, label %104, label %113

104:                                              ; preds = %96
  %105 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %106 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 46
  br i1 %111, label %112, label %113

112:                                              ; preds = %104, %83
  br label %23

113:                                              ; preds = %104, %96, %91
  br label %114

114:                                              ; preds = %113, %77
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %117 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @SSTOVC(i32 %118)
  %120 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %121 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %124 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %123, i32 0, i32 1
  %125 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %126 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %125, i32 0, i32 3
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @smbfs_fname_tolocal(i32 %119, i8* %122, i32* %124, i32 %131)
  %133 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %134 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %133, i32 0, i32 3
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %137 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %140 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @smbfs_getino(%struct.TYPE_6__* %135, i8* %138, i32 %141)
  %143 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %5, align 8
  %144 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %115, %41
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @smbfs_findnextLM1(%struct.smbfs_fctx*, i32) #1

declare dso_local i32 @smbfs_findnextLM2(%struct.smbfs_fctx*, i32) #1

declare dso_local i64 @SMB_UNICODE_STRINGS(i32) #1

declare dso_local i32 @SSTOVC(i32) #1

declare dso_local i64 @htole16(i32) #1

declare dso_local i64 @htole32(i32) #1

declare dso_local i32 @smbfs_fname_tolocal(i32, i8*, i32*, i32) #1

declare dso_local i32 @smbfs_getino(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
