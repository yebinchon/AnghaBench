; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_smbiostbl.c_smbios_type1_initializer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_smbiostbl.c_smbios_type1_initializer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbios_structure = type { i32 }
%struct.smbios_table_type1 = type { i32 }

@guest_uuid_str = common dso_local global i32* null, align 8
@uuid_s_ok = common dso_local global i64 0, align 8
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@vmname = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbios_structure*, i8**, i8*, i8**, i32*, i32*)* @smbios_type1_initializer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbios_type1_initializer(%struct.smbios_structure* %0, i8** %1, i8* %2, i8** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.smbios_structure*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.smbios_table_type1*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca [16 x i32], align 16
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.smbios_structure* %0, %struct.smbios_structure** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %struct.smbios_structure*, %struct.smbios_structure** %8, align 8
  %23 = load i8**, i8*** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i8**, i8*** %11, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @smbios_generic_initializer(%struct.smbios_structure* %22, i8** %23, i8* %24, i8** %25, i32* %26, i32* %27)
  %29 = load i8*, i8** %10, align 8
  %30 = bitcast i8* %29 to %struct.smbios_table_type1*
  store %struct.smbios_table_type1* %30, %struct.smbios_table_type1** %14, align 8
  %31 = load i32*, i32** @guest_uuid_str, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %6
  %34 = load i32*, i32** @guest_uuid_str, align 8
  %35 = call i32 @uuid_from_string(i32* %34, i32* %15, i64* %16)
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* @uuid_s_ok, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 -1, i32* %7, align 4
  br label %84

40:                                               ; preds = %33
  %41 = load %struct.smbios_table_type1*, %struct.smbios_table_type1** %14, align 8
  %42 = getelementptr inbounds %struct.smbios_table_type1, %struct.smbios_table_type1* %41, i32 0, i32 0
  %43 = call i32 @uuid_enc_le(i32* %42, i32* %15)
  br label %83

44:                                               ; preds = %6
  %45 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %19, align 8
  %48 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %20, align 8
  %49 = trunc i64 %46 to i32
  %50 = call i64 @gethostname(i8* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %79

53:                                               ; preds = %44
  %54 = call i32 @MD5Init(i32* %17)
  %55 = load i8*, i8** @vmname, align 8
  %56 = load i8*, i8** @vmname, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 @MD5Update(i32* %17, i8* %55, i32 %57)
  %59 = trunc i64 %46 to i32
  %60 = call i32 @MD5Update(i32* %17, i8* %48, i32 %59)
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %62 = call i32 @MD5Final(i32* %61, i32* %17)
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 6
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 15
  store i32 %65, i32* %63, align 8
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 6
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, 48
  store i32 %68, i32* %66, align 8
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 8
  %70 = load i32, i32* %69, align 16
  %71 = and i32 %70, 63
  store i32 %71, i32* %69, align 16
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 8
  %73 = load i32, i32* %72, align 16
  %74 = or i32 %73, 128
  store i32 %74, i32* %72, align 16
  %75 = load %struct.smbios_table_type1*, %struct.smbios_table_type1** %14, align 8
  %76 = getelementptr inbounds %struct.smbios_table_type1, %struct.smbios_table_type1* %75, i32 0, i32 0
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %78 = call i32 @memcpy(i32* %76, i32* %77, i32 64)
  store i32 0, i32* %21, align 4
  br label %79

79:                                               ; preds = %53, %52
  %80 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %21, align 4
  switch i32 %81, label %86 [
    i32 0, label %82
    i32 1, label %84
  ]

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %82, %40
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %79, %39
  %85 = load i32, i32* %7, align 4
  ret i32 %85

86:                                               ; preds = %79
  unreachable
}

declare dso_local i32 @smbios_generic_initializer(%struct.smbios_structure*, i8**, i8*, i8**, i32*, i32*) #1

declare dso_local i32 @uuid_from_string(i32*, i32*, i64*) #1

declare dso_local i32 @uuid_enc_le(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @gethostname(i8*, i32) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
