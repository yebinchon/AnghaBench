; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_make_boot_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_make_boot_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i8*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"bootvar creation\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Must specify boot loader\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Cannot translate unix loader path '%s' to UEFI\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Cannot translate unix kernel path '%s' to UEFI\00", align 1
@MAX_DP_LEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Loader path too long.\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Kernel path too long.\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Can't allocate memory for new device paths\00", align 1
@LOAD_OPTION_CATEGORY_BOOT = common dso_local global i32 0, align 4
@LOAD_OPTION_ACTIVE = common dso_local global i32 0, align 4
@MAX_LOADOPT_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@BAD_LENGTH = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"Can't create loadopt\00", align 1
@EFI_GLOBAL_GUID = common dso_local global i32 0, align 4
@COMMON_ATTRS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"efi_set_variable\00", align 1
@efivars = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i32, i32, i32)* @make_boot_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_boot_var(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i8* null, i8** %24, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = call i8* (...) @make_next_boot_var_name()
  store i8* %33, i8** %24, align 8
  br label %37

34:                                               ; preds = %7
  %35 = load i32, i32* %13, align 4
  %36 = call i8* @make_boot_var_name(i32 %35)
  store i8* %36, i8** %24, align 8
  br label %37

37:                                               ; preds = %34, %32
  %38 = load i8*, i8** %24, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i8*, i8** %9, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i8*, i8** %9, align 8
  %49 = call i64 @efivar_unix_path_to_device_path(i8* %48, i8** %22)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i8*, i8** %10, align 8
  %59 = call i64 @efivar_unix_path_to_device_path(i8* %58, i8** %23)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %61, %57
  br label %66

65:                                               ; preds = %54
  store i8* null, i8** %23, align 8
  br label %66

66:                                               ; preds = %65, %64
  %67 = load i8*, i8** %22, align 8
  %68 = call i64 @efidp_size(i8* %67)
  store i64 %68, i64* %19, align 8
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* @MAX_DP_LEN, align 8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %66
  %75 = load i8*, i8** %23, align 8
  %76 = call i64 @efidp_size(i8* %75)
  store i64 %76, i64* %20, align 8
  %77 = load i64, i64* %20, align 8
  %78 = load i64, i64* @MAX_DP_LEN, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %74
  %83 = load i64, i64* %19, align 8
  %84 = load i64, i64* %20, align 8
  %85 = add i64 %83, %84
  %86 = trunc i64 %85 to i32
  %87 = call i8* @malloc(i32 %86)
  store i8* %87, i8** %21, align 8
  %88 = load i8*, i8** %21, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = call i32 @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %82
  %93 = load i8*, i8** %21, align 8
  %94 = load i8*, i8** %22, align 8
  %95 = load i64, i64* %19, align 8
  %96 = call i32 @memcpy(i8* %93, i8* %94, i64 %95)
  %97 = load i8*, i8** %23, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load i8*, i8** %21, align 8
  %101 = load i64, i64* %19, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8*, i8** %23, align 8
  %104 = load i64, i64* %20, align 8
  %105 = call i32 @memcpy(i8* %102, i8* %103, i64 %104)
  br label %106

106:                                              ; preds = %99, %92
  %107 = load i32, i32* @LOAD_OPTION_CATEGORY_BOOT, align 4
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32, i32* @LOAD_OPTION_ACTIVE, align 4
  %112 = load i32, i32* %16, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %110, %106
  %115 = load i32, i32* @MAX_LOADOPT_LEN, align 4
  %116 = call i8* @malloc(i32 %115)
  store i8* %116, i8** %17, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %114
  %122 = load i8*, i8** %17, align 8
  %123 = load i32, i32* @MAX_LOADOPT_LEN, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load i8*, i8** %21, align 8
  %126 = load i64, i64* %19, align 8
  %127 = load i64, i64* %20, align 8
  %128 = add i64 %126, %127
  %129 = load i8*, i8** %8, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %121
  %134 = load i8*, i8** %11, align 8
  %135 = call i64 @strlen(i8* %134)
  %136 = add nsw i64 %135, 1
  br label %138

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137, %133
  %139 = phi i64 [ %136, %133 ], [ 0, %137 ]
  %140 = call i64 @create_loadopt(i8* %122, i32 %123, i32 %124, i8* %125, i64 %128, i8* %129, i8* %130, i64 %139)
  store i64 %140, i64* %18, align 8
  %141 = load i64, i64* %18, align 8
  %142 = load i64, i64* @BAD_LENGTH, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %138
  store i32 0, i32* %25, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* @EFI_GLOBAL_GUID, align 4
  %151 = load i8*, i8** %24, align 8
  %152 = load i8*, i8** %17, align 8
  %153 = load i64, i64* %18, align 8
  %154 = load i32, i32* @COMMON_ATTRS, align 4
  %155 = call i32 @efi_set_variable(i32 %150, i8* %151, i8* %152, i64 %153, i32 %154)
  store i32 %155, i32* %25, align 4
  br label %156

156:                                              ; preds = %149, %146
  %157 = load i32, i32* %25, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %156
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i8*, i8** %24, align 8
  %166 = call i32 @add_to_boot_order(i8* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = call i8* @malloc(i32 16)
  %169 = bitcast i8* %168 to %struct.entry*
  store %struct.entry* %169, %struct.entry** %15, align 8
  %170 = load %struct.entry*, %struct.entry** %15, align 8
  %171 = icmp eq %struct.entry* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %167
  %175 = load %struct.entry*, %struct.entry** %15, align 8
  %176 = call i32 @memset(%struct.entry* %175, i32 0, i32 16)
  %177 = load i8*, i8** %24, align 8
  %178 = load %struct.entry*, %struct.entry** %15, align 8
  %179 = getelementptr inbounds %struct.entry, %struct.entry* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  %180 = load i32, i32* @EFI_GLOBAL_GUID, align 4
  %181 = load %struct.entry*, %struct.entry** %15, align 8
  %182 = getelementptr inbounds %struct.entry, %struct.entry* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 8
  %183 = load %struct.entry*, %struct.entry** %15, align 8
  %184 = load i32, i32* @entries, align 4
  %185 = call i32 @LIST_INSERT_HEAD(i32* @efivars, %struct.entry* %183, i32 %184)
  %186 = load i8*, i8** %17, align 8
  %187 = call i32 @free(i8* %186)
  %188 = load i8*, i8** %21, align 8
  %189 = call i32 @free(i8* %188)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @make_next_boot_var_name(...) #1

declare dso_local i8* @make_boot_var_name(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @efivar_unix_path_to_device_path(i8*, i8**) #1

declare dso_local i64 @efidp_size(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @create_loadopt(i8*, i32, i32, i8*, i64, i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @efi_set_variable(i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @add_to_boot_order(i8*) #1

declare dso_local i32 @memset(%struct.entry*, i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.entry*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
