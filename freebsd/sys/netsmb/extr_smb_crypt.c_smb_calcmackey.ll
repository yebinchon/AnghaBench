; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_crypt.c_smb_calcmackey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_crypt.c_smb_calcmackey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { i32, i32, i32*, i32, i64 }

@SMB_FLAGS2_SECURITY_SIGNATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"signatures not enabled\00", align 1
@M_SMBTEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_calcmackey(%struct.smb_vc* %0) #0 {
  %2 = alloca %struct.smb_vc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i32], align 16
  %8 = alloca [21 x i32], align 16
  store %struct.smb_vc* %0, %struct.smb_vc** %2, align 8
  %9 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %10 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SMB_FLAGS2_SECURITY_SIGNATURE, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %16 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %21 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @M_SMBTEMP, align 4
  %24 = call i32 @free(i32* %22, i32 %23)
  %25 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %26 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %28 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %30 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %19, %1
  %32 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %33 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %32, i32 0, i32 1
  store i32 40, i32* %33, align 4
  %34 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %35 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @M_SMBTEMP, align 4
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = call i8* @malloc(i32 %36, i32 %37, i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %42 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %44 = call i8* @smb_vc_getpass(%struct.smb_vc* %43)
  store i8* %44, i8** %3, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @strlen(i8* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @M_SMBTEMP, align 4
  %53 = load i32, i32* @M_WAITOK, align 4
  %54 = call i8* @malloc(i32 %51, i32 %52, i32 %53)
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %4, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @smb_strtouni(i32* %56, i8* %57)
  %59 = call i32 @MD4Init(i32* %6)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = call i32 @MD4Update(i32* %6, i32* %60, i32 %64)
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %67 = call i32 @MD4Final(i32* %66, i32* %6)
  %68 = call i32 @MD4Init(i32* %6)
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %70 = call i32 @MD4Update(i32* %6, i32* %69, i32 16)
  %71 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %72 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @MD4Final(i32* %73, i32* %6)
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @M_SMBTEMP, align 4
  %77 = call i32 @free(i32* %75, i32 %76)
  %78 = getelementptr inbounds [21 x i32], [21 x i32]* %8, i64 0, i64 0
  %79 = call i32 @bzero(i32* %78, i32 21)
  %80 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %81 = getelementptr inbounds [21 x i32], [21 x i32]* %8, i64 0, i64 0
  %82 = call i32 @bcopy(i32* %80, i32* %81, i32 16)
  %83 = getelementptr inbounds [21 x i32], [21 x i32]* %8, i64 0, i64 0
  %84 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %85 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %88 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 16
  %91 = call i32 @smb_E(i32* %83, i32 %86, i32* %90)
  %92 = getelementptr inbounds [21 x i32], [21 x i32]* %8, i64 0, i64 0
  %93 = getelementptr inbounds i32, i32* %92, i64 7
  %94 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %95 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %98 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 24
  %101 = call i32 @smb_E(i32* %93, i32 %96, i32* %100)
  %102 = getelementptr inbounds [21 x i32], [21 x i32]* %8, i64 0, i64 0
  %103 = getelementptr inbounds i32, i32* %102, i64 14
  %104 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %105 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.smb_vc*, %struct.smb_vc** %2, align 8
  %108 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 32
  %111 = call i32 @smb_E(i32* %103, i32 %106, i32* %110)
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i8* @smb_vc_getpass(%struct.smb_vc*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @smb_strtouni(i32*, i8*) #1

declare dso_local i32 @MD4Init(i32*) #1

declare dso_local i32 @MD4Update(i32*, i32*, i32) #1

declare dso_local i32 @MD4Final(i32*, i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @smb_E(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
