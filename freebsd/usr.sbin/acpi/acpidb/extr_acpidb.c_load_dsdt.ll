; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidb/extr_acpidb.c_load_dsdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidb/extr_acpidb.c_load_dsdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"DSDT\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@dummy_dsdt_table = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"file name too long\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SYSTEM_MEMORY = common dso_local global i32 0, align 4
@aml_vm_space_handler_system_memory = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [47 x i8] c"could not initialise SystemMemory handler: %d\0A\00", align 1
@ACPI_ADR_SPACE_SYSTEM_IO = common dso_local global i32 0, align 4
@aml_vm_space_handler_system_io = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"could not initialise SystemIO handler: %d\0A\00", align 1
@ACPI_ADR_SPACE_PCI_CONFIG = common dso_local global i32 0, align 4
@aml_vm_space_handler_pci_config = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [44 x i8] c"could not initialise PciConfig handler: %d\0A\00", align 1
@ACPI_ADR_SPACE_EC = common dso_local global i32 0, align 4
@aml_vm_space_handler_ec = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [37 x i8] c"could not initialise EC handler: %d\0A\00", align 1
@ACPI_ADR_SPACE_SMBUS = common dso_local global i32 0, align 4
@aml_vm_space_handler_smbus = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [40 x i8] c"could not initialise SMBUS handler: %d\0A\00", align 1
@ACPI_ADR_SPACE_CMOS = common dso_local global i32 0, align 4
@aml_vm_space_handler_cmos = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [39 x i8] c"could not initialise CMOS handler: %d\0A\00", align 1
@ACPI_ADR_SPACE_PCI_BAR_TARGET = common dso_local global i32 0, align 4
@aml_vm_space_handler_pci_bar_target = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [49 x i8] c"could not initialise PCI BAR TARGET handler: %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@AcpiGbl_DebuggerConfiguration = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @load_dsdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_dsdt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = call i32 @open(i8* %18, i32 %19, i32 0)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %218

25:                                               ; preds = %1
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @fstat(i32 %26, %struct.stat* %8)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @close(i32 %31)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %218

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = load i32, i32* @PROT_READ, align 4
  %38 = load i32, i32* @MAP_PRIVATE, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call %struct.TYPE_6__* @mmap(i32* null, i64 %36, i32 %37, i32 %38, i32 %39, i32 0)
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @close(i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = icmp eq %struct.TYPE_6__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %218

47:                                               ; preds = %33
  %48 = call i32 (...) @AcpiInitializeSubsystem()
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @AE_OK, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = call i32 @munmap(%struct.TYPE_6__* %52, i64 %55)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %218

57:                                               ; preds = %47
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = bitcast %struct.TYPE_6__* %58 to i8*
  %60 = call i64 @strncmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  %63 = load i8*, i8** %3, align 8
  %64 = trunc i64 %15 to i32
  %65 = call i32 @strlcpy(i8* %17, i8* %63, i32 %64)
  br label %119

66:                                               ; preds = %57
  store i32 1, i32* %9, align 4
  %67 = load i32, i32* @S_IRUSR, align 4
  %68 = load i32, i32* @S_IWUSR, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @S_IRGRP, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @S_IROTH, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %13, align 4
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 4, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dummy_dsdt_table, i32 0, i32 0), align 4
  %79 = trunc i64 %15 to i32
  %80 = load i8*, i8** %3, align 8
  %81 = call i64 @snprintf(i8* %17, i32 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %80)
  %82 = sub i64 %15, 1
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %66
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = call i32 @munmap(%struct.TYPE_6__* %87, i64 %90)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %218

92:                                               ; preds = %66
  %93 = load i32, i32* @O_WRONLY, align 4
  %94 = load i32, i32* @O_CREAT, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @O_TRUNC, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @open(i8* %17, i32 %97, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %109

102:                                              ; preds = %92
  %103 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = call i32 @munmap(%struct.TYPE_6__* %104, i64 %107)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %218

109:                                              ; preds = %92
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @write(i32 %110, %struct.TYPE_6__* @dummy_dsdt_table, i32 4)
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @write(i32 %112, %struct.TYPE_6__* %113, i32 %115)
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @close(i32 %117)
  br label %119

119:                                              ; preds = %109, %62
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %121 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = call i32 @munmap(%struct.TYPE_6__* %120, i64 %123)
  %125 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %126 = load i32, i32* @ACPI_ADR_SPACE_SYSTEM_MEMORY, align 4
  %127 = load i64, i64* @aml_vm_space_handler_system_memory, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @AcpiInstallAddressSpaceHandler(i32 %125, i32 %126, i32 %128, i32* null, i32* null)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* @AE_OK, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %119
  %133 = load i32, i32* @stderr, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %218

136:                                              ; preds = %119
  %137 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %138 = load i32, i32* @ACPI_ADR_SPACE_SYSTEM_IO, align 4
  %139 = load i64, i64* @aml_vm_space_handler_system_io, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @AcpiInstallAddressSpaceHandler(i32 %137, i32 %138, i32 %140, i32* null, i32* null)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* @AE_OK, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = load i32, i32* @stderr, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %146)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %218

148:                                              ; preds = %136
  %149 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %150 = load i32, i32* @ACPI_ADR_SPACE_PCI_CONFIG, align 4
  %151 = load i64, i64* @aml_vm_space_handler_pci_config, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 @AcpiInstallAddressSpaceHandler(i32 %149, i32 %150, i32 %152, i32* null, i32* null)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* @AE_OK, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %148
  %157 = load i32, i32* @stderr, align 4
  %158 = load i32, i32* %10, align 4
  %159 = call i32 (i32, i8*, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %158)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %218

160:                                              ; preds = %148
  %161 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %162 = load i32, i32* @ACPI_ADR_SPACE_EC, align 4
  %163 = load i64, i64* @aml_vm_space_handler_ec, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i32 @AcpiInstallAddressSpaceHandler(i32 %161, i32 %162, i32 %164, i32* null, i32* null)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* @AE_OK, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %160
  %169 = load i32, i32* @stderr, align 4
  %170 = load i32, i32* %10, align 4
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %170)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %218

172:                                              ; preds = %160
  %173 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %174 = load i32, i32* @ACPI_ADR_SPACE_SMBUS, align 4
  %175 = load i64, i64* @aml_vm_space_handler_smbus, align 8
  %176 = trunc i64 %175 to i32
  %177 = call i32 @AcpiInstallAddressSpaceHandler(i32 %173, i32 %174, i32 %176, i32* null, i32* null)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* @AE_OK, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %172
  %181 = load i32, i32* @stderr, align 4
  %182 = load i32, i32* %10, align 4
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %181, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %182)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %218

184:                                              ; preds = %172
  %185 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %186 = load i32, i32* @ACPI_ADR_SPACE_CMOS, align 4
  %187 = load i64, i64* @aml_vm_space_handler_cmos, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i32 @AcpiInstallAddressSpaceHandler(i32 %185, i32 %186, i32 %188, i32* null, i32* null)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* @AE_OK, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %184
  %193 = load i32, i32* @stderr, align 4
  %194 = load i32, i32* %10, align 4
  %195 = call i32 (i32, i8*, ...) @fprintf(i32 %193, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %194)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %218

196:                                              ; preds = %184
  %197 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %198 = load i32, i32* @ACPI_ADR_SPACE_PCI_BAR_TARGET, align 4
  %199 = load i64, i64* @aml_vm_space_handler_pci_bar_target, align 8
  %200 = trunc i64 %199 to i32
  %201 = call i32 @AcpiInstallAddressSpaceHandler(i32 %197, i32 %198, i32 %200, i32* null, i32* null)
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* @AE_OK, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %196
  %205 = load i32, i32* @stderr, align 4
  %206 = load i32, i32* %10, align 4
  %207 = call i32 (i32, i8*, ...) @fprintf(i32 %205, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i32 %206)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %218

208:                                              ; preds = %196
  store i32* null, i32** %6, align 8
  %209 = load i32, i32* @TRUE, align 4
  %210 = call i32 @AcGetAllTablesFromFile(i8* %17, i32 %209, i32** %6)
  %211 = call i32 (...) @AcpiInitializeDebugger()
  store i64 0, i64* @AcpiGbl_DebuggerConfiguration, align 8
  %212 = call i32 (...) @AcpiDbUserCommands()
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %208
  %216 = call i32 @unlink(i8* %17)
  br label %217

217:                                              ; preds = %215, %208
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %218

218:                                              ; preds = %217, %204, %192, %180, %168, %156, %144, %132, %102, %84, %51, %45, %29, %23
  %219 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @close(i32) #2

declare dso_local %struct.TYPE_6__* @mmap(i32*, i64, i32, i32, i32, i32) #2

declare dso_local i32 @AcpiInitializeSubsystem(...) #2

declare dso_local i32 @munmap(%struct.TYPE_6__*, i64) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @write(i32, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @AcpiInstallAddressSpaceHandler(i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @AcGetAllTablesFromFile(i8*, i32, i32**) #2

declare dso_local i32 @AcpiInitializeDebugger(...) #2

declare dso_local i32 @AcpiDbUserCommands(...) #2

declare dso_local i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
